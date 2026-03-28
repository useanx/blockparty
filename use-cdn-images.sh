#!/bin/bash
BASE="https://uploads-ssl.webflow.com/68de32646995fdd91e3a3107"
SRC="/Users/Sean/Code/astro/src"
echo "Updating image references to Webflow CDN URLs..."
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/hero-home.avif|${BASE}/68df85d8eb6f8202795c0819.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/intro-gathering.avif|${BASE}/68df8911c8d866fda8f9ae2a.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-spaces.avif|${BASE}/68df85d87d2df19761d5d8e1.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/catering-menus.avif|${BASE}/68df890fc247dad0843a3681.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/event-planning.avif|${BASE}/68df8bd93657ee621e7a51c9.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/editorial-1.avif|${BASE}/68df8914754414ddbfae0394.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/editorial-2.avif|${BASE}/68df8910efeeacb33d505b2f.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/editorial-3.avif|${BASE}/68df890fc247dad0843a3681.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-1.avif|${BASE}/68df85d8eb6f8202795c0819.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-2.avif|${BASE}/68df893854efe1d014f5fc09.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-3.avif|${BASE}/68df85dad13def22f37e8ffe.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-4.avif|${BASE}/68df85d826ca66986642b1b7.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-5.avif|${BASE}/68df893829600638dcd668b7.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-6.avif|${BASE}/68df8bd971cfdce9bde8b905.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-7.avif|${BASE}/68df895c236766a94b6321ab.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/gallery-8.avif|${BASE}/68df8bd9eb6f8202795d9fc7.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/testimonial.avif|${BASE}/68df85d9ddace87d69af281c.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/hero-venues.avif|${BASE}/68df89118f92856bf3d685b5.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-longhouse.avif|${BASE}/68df893884c87776f1233ce6.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-buenavida-cantina.avif|${BASE}/68df8911cf7eec50cda5419b.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-lot-f.avif|${BASE}/68df895c9bd09dff934edc3e.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-venue-local-fireside.avif|${BASE}/68df85d826ca66986642b1b7.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-longhouse-hero.avif|${BASE}/68df893884c87776f1233ce6.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-longhouse-detail.avif|${BASE}/68df893925d2346f1ba8987a.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-longhouse-why.avif|${BASE}/68df8938cd1679df6c7076d7.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-buenavida-cantina-hero.avif|${BASE}/68df8910d5f3024764e8191e.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-buenavida-cantina-detail.avif|${BASE}/68df89118f92856bf3d685b5.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-buenavida-cantina-why.avif|${BASE}/68df89133113c1e48863ffe3.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-lot-f-hero.avif|${BASE}/68df895c446bed2904f9344c.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-lot-f-detail.avif|${BASE}/68df895c9bd09dff934edc3e.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-lot-f-why.avif|${BASE}/68df895c1360a07f3022a74c.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-venue-local-fireside-hero.avif|${BASE}/68df85d826ca66986642b1b7.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-venue-local-fireside-detail.avif|${BASE}/68df85da22d12a18690d7079.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/venue-venue-local-fireside-why.avif|${BASE}/68df85d9645c2ee4493bb46f.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/hero-host.avif|${BASE}/68df895c446bed2904f9344c.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/hero-catering.avif|${BASE}/68df89138fc608b9cb14a54b.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/catering-event.avif|${BASE}/68df89138fc608b9cb14a54b.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/catering-dish.avif|${BASE}/68e386b0519df8f6918fcec4.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/hero-careers.avif|${BASE}/68df890f297d468ce342f32c.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-1.avif|${BASE}/68e0ddad4327398dc4119b54.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-2.avif|${BASE}/68e0dec8cdca16a714918cb5.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-3.avif|${BASE}/68e0ddad831e570c031a65dd.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-4.avif|${BASE}/68e0df2bd3cf0d1a992f6593.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-5.avif|${BASE}/68e0ddad8909a10dec051b05.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-6.avif|${BASE}/68e0dfe65f4d57ffa5849d8f.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-7.avif|${BASE}/68e0e0465f8658adb3020cee.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-8.avif|${BASE}/68e0e09c1c1656ec77273637.avif|g" {} +
find "$SRC" -name "*.astro" -exec sed -i '' "s|/images/partner-9.avif|${BASE}/68e0ddad140e20f03b7d601e.avif|g" {} +
echo "Done! All image references now point to Webflow CDN."
