#!/bin/bash

# Block Party Productions — Image Downloader
# Downloads all images from Webflow CDN and saves with correct filenames

BASE="https://uploads-ssl.webflow.com/68de32646995fdd91e3a3107"
DEST="/Users/Sean/Code/astro/public/images"

mkdir -p "$DEST"

echo "Downloading Block Party Productions images..."

# --- Homepage ---
curl -s -o "$DEST/hero-home.jpg"           "$BASE/68df85d8eb6f8202795c0819.jpg"
curl -s -o "$DEST/intro-gathering.jpg"     "$BASE/68df8911c8d866fda8f9ae2a.jpg"
curl -s -o "$DEST/venue-spaces.jpg"        "$BASE/68df85d87d2df19761d5d8e1.jpg"
curl -s -o "$DEST/catering-menus.jpg"      "$BASE/68df890fc247dad0843a3681.jpg"
curl -s -o "$DEST/event-planning.jpg"      "$BASE/68df8bd93657ee621e7a51c9.jpg"
curl -s -o "$DEST/editorial-1.jpg"         "$BASE/68df8914754414ddbfae0394.jpg"
curl -s -o "$DEST/editorial-2.jpg"         "$BASE/68df8910efeeacb33d505b2f.jpg"
curl -s -o "$DEST/editorial-3.jpg"         "$BASE/68df890fc247dad0843a3681.jpg"
curl -s -o "$DEST/gallery-1.jpg"           "$BASE/68df85d8eb6f8202795c0819.jpg"
curl -s -o "$DEST/gallery-2.jpg"           "$BASE/68df893854efe1d014f5fc09.jpg"
curl -s -o "$DEST/gallery-3.jpg"           "$BASE/68df85dad13def22f37e8ffe.jpg"
curl -s -o "$DEST/gallery-4.jpg"           "$BASE/68df85d826ca66986642b1b7.jpg"
curl -s -o "$DEST/gallery-5.jpg"           "$BASE/68df893829600638dcd668b7.jpg"
curl -s -o "$DEST/gallery-6.jpg"           "$BASE/68df8bd971cfdce9bde8b905.jpg"
curl -s -o "$DEST/gallery-7.jpg"           "$BASE/68df895c236766a94b6321ab.jpg"
curl -s -o "$DEST/gallery-8.jpg"           "$BASE/68df8bd9eb6f8202795d9fc7.jpg"

# --- Testimonial image ---
curl -s -o "$DEST/testimonial.jpg"         "$BASE/68df85d9ddace87d69af281c.jpg"

# --- Venues page ---
curl -s -o "$DEST/hero-venues.jpg"         "$BASE/68df89118f92856bf3d685b5.jpg"

# --- Venue cards (used on Venues page + homepage grid) ---
curl -s -o "$DEST/venue-longhouse.jpg"             "$BASE/68df893884c87776f1233ce6.jpg"
curl -s -o "$DEST/venue-buenavida-cantina.jpg"     "$BASE/68df8911cf7eec50cda5419b.jpg"
curl -s -o "$DEST/venue-lot-f.jpg"                 "$BASE/68df895c9bd09dff934edc3e.jpg"
curl -s -o "$DEST/venue-venue-local-fireside.jpg"  "$BASE/68df85d826ca66986642b1b7.jpg"

# --- LongHouse detail pages ---
curl -s -o "$DEST/venue-longhouse-hero.jpg"   "$BASE/68df893884c87776f1233ce6.jpg"
curl -s -o "$DEST/venue-longhouse-detail.jpg" "$BASE/68df893925d2346f1ba8987a.jpg"
curl -s -o "$DEST/venue-longhouse-why.jpg"    "$BASE/68df8938cd1679df6c7076d7.jpg"

# --- BuenaVida Cantina detail pages ---
curl -s -o "$DEST/venue-buenavida-cantina-hero.jpg"   "$BASE/68df8910d5f3024764e8191e.jpg"
curl -s -o "$DEST/venue-buenavida-cantina-detail.jpg" "$BASE/68df89118f92856bf3d685b5.jpg"
curl -s -o "$DEST/venue-buenavida-cantina-why.jpg"    "$BASE/68df89133113c1e48863ffe3.jpg"

# --- Lot F detail pages ---
curl -s -o "$DEST/venue-lot-f-hero.jpg"   "$BASE/68df895c446bed2904f9344c.jpg"
curl -s -o "$DEST/venue-lot-f-detail.jpg" "$BASE/68df895c9bd09dff934edc3e.jpg"
curl -s -o "$DEST/venue-lot-f-why.jpg"    "$BASE/68df895c1360a07f3022a74c.jpg"

# --- Fireside / Local Kitchen detail pages ---
curl -s -o "$DEST/venue-venue-local-fireside-hero.jpg"   "$BASE/68df85d826ca66986642b1b7.jpg"
curl -s -o "$DEST/venue-venue-local-fireside-detail.jpg" "$BASE/68df85da22d12a18690d7079.jpg"
curl -s -o "$DEST/venue-venue-local-fireside-why.jpg"    "$BASE/68df85d9645c2ee4493bb46f.jpg"

# --- Host Your Event page ---
curl -s -o "$DEST/hero-host.jpg"   "$BASE/68df895c446bed2904f9344c.jpg"

# --- Catering page ---
curl -s -o "$DEST/hero-catering.jpg"  "$BASE/68df89138fc608b9cb14a54b.jpg"
curl -s -o "$DEST/catering-event.jpg" "$BASE/68df89138fc608b9cb14a54b.jpg"
curl -s -o "$DEST/catering-dish.jpg"  "$BASE/68e386b0519df8f6918fcec4.jpg"

# --- Careers page ---
curl -s -o "$DEST/hero-careers.jpg" "$BASE/68df890f297d468ce342f32c.jpg"

# --- Partner logos ---
curl -s -o "$DEST/partner-1.png" "$BASE/68e0ddad4327398dc4119b54.png"
curl -s -o "$DEST/partner-2.png" "$BASE/68e0dec8cdca16a714918cb5.png"
curl -s -o "$DEST/partner-3.png" "$BASE/68e0ddad831e570c031a65dd.png"
curl -s -o "$DEST/partner-4.png" "$BASE/68e0df2bd3cf0d1a992f6593.png"
curl -s -o "$DEST/partner-5.png" "$BASE/68e0ddad8909a10dec051b05.png"
curl -s -o "$DEST/partner-6.png" "$BASE/68e0dfe65f4d57ffa5849d8f.png"
curl -s -o "$DEST/partner-7.png" "$BASE/68e0e0465f8658adb3020cee.png"
curl -s -o "$DEST/partner-8.png" "$BASE/68e0e09c1c1656ec77273637.png"
curl -s -o "$DEST/partner-9.png" "$BASE/68e0ddad140e20f03b7d601e.png"

echo "Done! All images saved to $DEST"
echo "Check the images folder in VS Code to confirm."