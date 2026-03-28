#!/bin/bash
SRC="/Users/Sean/Downloads/images"
DEST="/Users/Sean/Code/astro/public/images"
mkdir -p "$DEST"
echo "Moving and renaming images..."

copy_by_id() {
  local id=$1
  local destname=$2
  local found=$(find "$SRC" -type f -name "*${id}*" | grep -v "p-500\|p-800\|p-1080\|p-1600\|p-2000\|p-2600\|p-3200" | head -1)
  if [ -n "$found" ]; then
    ext="${found##*.}"
    cp "$found" "$DEST/${destname}.${ext}"
    echo "  OK: ${destname}.${ext}"
  else
    echo "  MISSING: ${destname} (id: ${id})"
  fi
}

copy_by_id "68df85d8eb6f8202795c0819" "hero-home"
copy_by_id "68df8911c8d866fda8f9ae2a" "intro-gathering"
copy_by_id "68df85d87d2df19761d5d8e1" "venue-spaces"
copy_by_id "68df890fc247dad0843a3681" "catering-menus"
copy_by_id "68df8bd93657ee621e7a51c9" "event-planning"
copy_by_id "68df8914754414ddbfae0394" "editorial-1"
copy_by_id "68df8910efeeacb33d505b2f" "editorial-2"
copy_by_id "68df893854efe1d014f5fc09" "gallery-2"
copy_by_id "68df85dad13def22f37e8ffe" "gallery-3"
copy_by_id "68df85d826ca66986642b1b7" "gallery-4"
copy_by_id "68df893829600638dcd668b7" "gallery-5"
copy_by_id "68df8bd971cfdce9bde8b905" "gallery-6"
copy_by_id "68df895c236766a94b6321ab" "gallery-7"
copy_by_id "68df8bd9eb6f8202795d9fc7" "gallery-8"
copy_by_id "68df85d9ddace87d69af281c" "testimonial"
copy_by_id "68df89118f92856bf3d685b5" "hero-venues"
copy_by_id "68df893884c87776f1233ce6" "venue-longhouse"
copy_by_id "68df8911cf7eec50cda5419b" "venue-buenavida-cantina"
copy_by_id "68df895c9bd09dff934edc3e" "venue-lot-f"
copy_by_id "68df893925d2346f1ba8987a" "venue-longhouse-detail"
copy_by_id "68df8938cd1679df6c7076d7" "venue-longhouse-why"
copy_by_id "68df8910d5f3024764e8191e" "venue-buenavida-cantina-hero"
copy_by_id "68df89133113c1e48863ffe3" "venue-buenavida-cantina-why"
copy_by_id "68df895c446bed2904f9344c" "venue-lot-f-hero"
copy_by_id "68df895c1360a07f3022a74c" "venue-lot-f-why"
copy_by_id "68df85da22d12a18690d7079" "venue-venue-local-fireside-detail"
copy_by_id "68df85d9645c2ee4493bb46f" "venue-venue-local-fireside-why"
copy_by_id "68df89138fc608b9cb14a54b" "hero-catering"
copy_by_id "68e386b0519df8f6918fcec4" "catering-dish"
copy_by_id "68df890f297d468ce342f32c" "hero-careers"
copy_by_id "68e0ddad4327398dc4119b54" "partner-1"
copy_by_id "68e0dec8cdca16a714918cb5" "partner-2"
copy_by_id "68e0ddad831e570c031a65dd" "partner-3"
copy_by_id "68e0df2bd3cf0d1a992f6593" "partner-4"
copy_by_id "68e0ddad8909a10dec051b05" "partner-5"
copy_by_id "68e0dfe65f4d57ffa5849d8f" "partner-6"
copy_by_id "68e0e0465f8658adb3020cee" "partner-7"
copy_by_id "68e0e09c1c1656ec77273637" "partner-8"
copy_by_id "68e0ddad140e20f03b7d601e" "partner-9"
copy_by_id "68df8f6768ecb45868eb379c" "logo"

echo ""
echo "Done! Check above for any MISSING files."
