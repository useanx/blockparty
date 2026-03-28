export interface Venue {
  name: string;
  slug: string;
  imageExt: string;
  address: string;
  tagline: string;
  heroHeading: string;
  heroSubheading: string;
  descriptionHeading: string;
  descriptionBody: string[];
  detailHeading: string;
  detailBody: string;
  seo: {
    title: string;
    description: string;
  };
}

export const venues: Venue[] = [
  {
    name: 'LongHouse',
    slug: 'longhouse',
    imageExt: 'jpg',
    address: '83 Minna St, San Francisco, CA',
    tagline: 'Open, flexible, loft-style venue designed for immersive gatherings, creative offsites, and brand activations.',
    heroHeading: 'Unforgettable Moments Start Here',
    heroSubheading: 'Open, flexible, loft-style venue designed for immersive gatherings, creative offsites, and brand activations.',
    descriptionHeading: 'A Sunlit Urban Loft Built for Storytelling',
    descriptionBody: [
      'Just around the corner from Moscone Center, Longhouse is a rare SoMa gem: a soaring, light-filled loft with turn-of-the-century warehouse charm and an open floor plan that invites creativity. Exposed brick, reclaimed wood, and skylights create a warm, industrial-elegant backdrop that feels expansive yet grounded, perfect for brand activations, community gatherings, and stylish celebrations.',
      'With space for up to 250 guests, Longhouse adapts beautifully to your vision, whether it\'s a seated dinner, standing reception, or immersive experience. A central bar anchors the energy of the room, while built-in lounge and banquet seating create natural flow and flexible zones. Menus are customizable and chef-driven, ranging from seasonal Californian to modern Mexican or Southern comfort, with full bar offerings to match.',
    ],
    detailHeading: 'Spaces that inspire every gathering',
    detailBody: 'From custom lighting to photo booths and entertainment, the Block Party team can help you transform the space into something unforgettable. Easily accessible by BART, MUNI, and nearby garages, Longhouse is where creative concepts come to life — just blocks from Salesforce Tower, Oracle Park, and the beating heart of San Francisco\'s convention corridor.',
    seo: {
      title: 'LongHouse | Block Party Productions - Unique Event Venue in San Francisco',
      description: 'Discover the distinctive features of Block Party Productions\' venues and catering services, perfect for any event in San Francisco. Flexible spaces, chef-driven menus, and unforgettable experiences await.',
    },
  },
  {
    name: 'BuenaVida Cantina',
    slug: 'buenavida-cantina',
    imageExt: 'jpg',
    address: '860 Folsom St, San Francisco, CA',
    tagline: 'Vibrant, Yucatán-inspired cantina featuring bold regional flavors, a lively bar, and an unmistakable sense of festive sophistication.',
    heroHeading: 'Gather. Celebrate. Make it unforgettable.',
    heroSubheading: 'Vibrant, Yucatán-inspired cantina featuring bold regional flavors, a lively bar, and an unmistakable sense of festive sophistication.',
    descriptionHeading: 'A Vibrant, Flavor-Forward Venue With Soul',
    descriptionBody: [
      'Steps from Moscone Center and nestled in the heart of SoMa, Buena Vida Cantina brings the vibrant energy of southern Mexico to one of San Francisco\'s most dynamic neighborhoods. With a colorful, multi-zone layout — including a private dining room, loft, full bar, and heated outdoor deck — this venue is built for events that aim to be both memorable and full of flavor.',
    ],
    detailHeading: 'Spaces that inspire every gathering',
    detailBody: 'Perfect for everything from seated dinners (up to 70 guests) to lively mixers and brand activations (up to 300 with a full buyout), Buena Vida is equal parts culinary celebration and community space. Chef-led menus honor Yucatán heritage with handmade tortillas, cochinita pibil, and creative seafood dishes, while the bar delivers top-shelf mezcal, fresh margaritas, and curated tequila flights. Easily accessible via BART, MUNI, and nearby garages, Buena Vida is where guests come to connect, toast, and taste something they\'ll talk about long after the event ends.',
    seo: {
      title: 'BuenaVida Cantina | Block Party Productions - Unique Event Venue in San Francisco',
      description: 'Discover the distinctive features of Block Party Productions\' venues and catering services, perfect for any event in San Francisco. Flexible spaces, chef-driven menus, and unforgettable experiences await.',
    },
  },
  {
    name: 'Lot F',
    slug: 'lot-f',
    imageExt: 'jpg',
    address: '858 Folsom St, San Francisco, CA',
    tagline: 'Modern, industrial-chic venue with a private patio and flexible indoor/outdoor flow.',
    heroHeading: 'Unforgettable Moments Start Here',
    heroSubheading: 'Modern, industrial-chic venue with a private patio and flexible indoor/outdoor flow.',
    descriptionHeading: 'An Industrial-Chic Hideaway in the Heart of SoMa',
    descriptionBody: [
      'Tucked just steps from Moscone Center and Salesforce Tower, Lot F is a light-filled loft venue that blends creative edge with effortless hospitality. With soaring ceilings, bi-level design, and a private garden patio, it\'s the kind of space that feels exclusive but never stiff — perfect for everything from brand activations to networking receptions and elevated team dinners.',
      'The open floor plan includes a flexible main space, a semi-private upstairs loft, and seamless access to heated outdoor seating, ideal for breakout conversations or cocktail-hour ambiance. During the day, natural light floods through oversized windows; by night, warm wood accents and ambient lighting set a refined, welcoming tone.',
    ],
    detailHeading: 'Spaces that inspire every gathering',
    detailBody: 'Lot F\'s chef-driven menus and full-service event support — from bar programs to entertainment coordination — make it easy to design an experience that fits your vision without the stress. Located at 858 Folsom with easy access to BART, MUNI, and nearby parking, it\'s a favorite among startups, agencies, and corporate teams looking for a venue that\'s as thoughtful as it is stylish.',
    seo: {
      title: 'Lot F | Block Party Productions - Unique Event Venue in San Francisco',
      description: 'Discover the distinctive features of Block Party Productions\' venues and catering services, perfect for any event in San Francisco. Flexible spaces, chef-driven menus, and unforgettable experiences await.',
    },
  },
  {
    name: 'Fireside / Local Kitchen',
    slug: 'venue-local-fireside',
    imageExt: 'avif',
    address: '330 1st St, San Francisco, CA',
    tagline: 'Warm, flexible dining space centered around wood-fired cuisine and thoughtful gatherings.',
    heroHeading: 'Gather. Celebrate. Make it unforgettable.',
    heroSubheading: 'Warm, flexible dining space centered around wood-fired cuisine and thoughtful gatherings.',
    descriptionHeading: 'A Modern Classic For Meaningful Gatherings',
    descriptionBody: [
      'Nestled in the heart of SoMa, just minutes from Oracle Park and Moscone, Fireside / Local Kitchen & Wine Merchant offers a warm, design-forward space ideal for private events, team dinners, and milestone celebrations. With high ceilings, natural light, and an open kitchen anchored by a wood-fired oven, the space feels intimate yet expansive — perfect for groups that want both atmosphere and ease.',
    ],
    detailHeading: 'Spaces that inspire every gathering',
    detailBody: 'Guests can flow between the airy main dining room, a private wine room wrapped in handcrafted racks, and a full bar that comes alive in the evenings. The food? Seasonal California cuisine with Italian soul, served with a curated wine list and timeless cocktails. Whether you\'re planning a client dinner, post-conference gathering, or special celebration, Local Kitchen combines thoughtful hospitality with effortless style.',
    seo: {
      title: 'Fireside / Local Kitchen | Block Party Productions - Unique Event Venue in San Francisco',
      description: 'Discover the distinctive features of Block Party Productions\' venues and catering services, perfect for any event in San Francisco. Flexible spaces, chef-driven menus, and unforgettable experiences await.',
    },
  },
];