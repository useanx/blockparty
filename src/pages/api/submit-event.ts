import type { APIRoute } from 'astro';
import { Resend } from 'resend';

export const prerender = false;

const resend = new Resend(import.meta.env.RESEND_API_KEY);

function formatEmail(data: Record<string, unknown>): string {
  const isCatering = data.formType === 'catering';
  const venues = Array.isArray(data.venues) ? (data.venues as string[]).join(', ') : '—';
  const addons = Array.isArray(data.addons) ? (data.addons as string[]).join(', ') : '—';

  const row = (label: string, value: unknown) => `
    <tr>
      <td style="padding:0.5rem 0;color:#6b7280;width:40%;vertical-align:top;">${label}</td>
      <td style="padding:0.5rem 0;font-weight:500;">${value || '—'}</td>
    </tr>`;

  const section = (title: string, rows: string) => `
    <h2 style="font-size:0.85rem;color:#6b7280;text-transform:uppercase;letter-spacing:0.1em;margin:1.5rem 0 0.75rem;border-top:1px solid #e5e7eb;padding-top:1.5rem;">
      ${title}
    </h2>
    <table style="width:100%;border-collapse:collapse;">${rows}</table>`;

  const contactRows =
    row('Name', `${data.firstName} ${data.lastName}`) +
    row('Email', data.email) +
    row('Phone', data.phone) +
    row('Company', data.company);

  const eventRows = isCatering
    ? row('Date', data.eventDate) +
      row('Time', data.eventTime) +
      row('Guest Count', data.guestCount) +
      row('Budget', data.budget) +
      row('Cuisine Type', data.cuisineType)
    : row('Date', data.eventDate) +
      row('Time', data.eventTime) +
      row('Duration', data.duration) +
      row('Party Size', data.partySize) +
      row('Event Type', data.eventType) +
      row('Event Style', data.eventStyle) +
      row('Budget', data.budget) +
      row('Venues of Interest', venues) +
      row('Add-ons', addons);

  const messageBlock = data.message
    ? `<h2 style="font-size:0.85rem;color:#6b7280;text-transform:uppercase;letter-spacing:0.1em;margin:1.5rem 0 0.75rem;border-top:1px solid #e5e7eb;padding-top:1.5rem;">Additional Notes</h2>
       <p style="background:#f9fafb;padding:1rem;border-radius:0.5rem;margin:0;line-height:1.6;">${data.message}</p>`
    : '';

  const heading = isCatering ? 'New Catering Inquiry' : 'New Event Booking Inquiry';
  const footer = isCatering
    ? 'Sent from blockpartypsf.com catering form'
    : 'Sent from blockpartypsf.com event booking form';

  return `
    <div style="font-family:sans-serif;max-width:600px;margin:0 auto;color:#111;">
      <div style="background:#000;padding:2rem;text-align:center;">
        <h1 style="color:#fff;margin:0;font-size:1.5rem;">${heading}</h1>
      </div>
      <div style="padding:2rem;border:1px solid #e5e7eb;">
        ${section('Contact Details', contactRows)}
        ${section('Event Details', eventRows)}
        ${messageBlock}
      </div>
      <div style="padding:1rem 2rem;background:#f9fafb;text-align:center;font-size:0.75rem;color:#9ca3af;">
        ${footer}
      </div>
    </div>`;
}

export const POST: APIRoute = async ({ request }) => {
  try {
    const data = await request.json() as Record<string, unknown>;

    const isCatering = data.formType === 'catering';
    const subject = isCatering
      ? `New Catering Inquiry — ${data.firstName} ${data.lastName} (${data.company})`
      : `New Event Inquiry — ${data.firstName} ${data.lastName} (${data.company}) — ${data.eventDate}`;

    const { error } = await resend.emails.send({
      from: 'Block Party Productions <onboarding@resend.dev>',
      to: 'stezrr@gmail.com',
      replyTo: data.email as string,
      subject,
      html: formatEmail(data),
    });

    if (error) {
      console.error('Resend error:', error);
      return new Response(JSON.stringify({ error: error.message }), {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    return new Response(JSON.stringify({ success: true }), {
      status: 200,
      headers: { 'Content-Type': 'application/json' },
    });

  } catch (err) {
    console.error('Server error:', err);
    return new Response(JSON.stringify({ error: 'Server error' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
};