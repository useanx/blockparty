import type { APIRoute } from 'astro';
import { Resend } from 'resend';

export const prerender = false;

const resend = new Resend(import.meta.env.RESEND_API_KEY);

export const POST: APIRoute = async ({ request }) => {
  try {
    const { email } = await request.json() as { email: string };

    if (!email || !email.includes('@')) {
      return new Response(JSON.stringify({ error: 'Invalid email' }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    const { error } = await resend.emails.send({
      from: 'Block Party Productions <onboarding@resend.dev>',
      to: 'stezrr@gmail.com',
      subject: `New Email Subscriber — ${email}`,
      html: `
        <div style="font-family:sans-serif;max-width:400px;margin:0 auto;">
          <div style="background:#000;padding:1.5rem;text-align:center;">
            <h1 style="color:#fff;margin:0;font-size:1.25rem;">New Email Subscriber</h1>
          </div>
          <div style="padding:1.5rem;border:1px solid #e5e7eb;">
            <p style="margin:0;"><strong>Email:</strong> ${email}</p>
          </div>
        </div>`,
    });

    if (error) {
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
    console.error('Subscribe error:', err);
    return new Response(JSON.stringify({ error: 'Server error' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
};