# 🎨 Services Section - CSS Class Reference

## Section Structure

```
services-section (Main Container)
├── services-header (Header Container)
│   ├── services-label (Label: "WHAT WE OFFER")
│   ├── services-title (Main Heading: "Explore Our Services")
│   └── services-description (Description Text)
│
└── services-grid (Cards Container)
    ├── service-card (Card 1 - Land Freight)
    │   ├── service-image-wrapper
    │   │   ├── service-image
    │   │   └── service-icon-overlay
    │   │       └── <i> (Icon)
    │   └── service-content
    │       ├── service-title
    │       ├── service-description-text
    │       └── service-read-more
    │
    ├── service-card (Card 2 - Air Transport)
    │   └── [Same structure as Card 1]
    │
    └── service-card (Card 3 - Sea Transport)
        └── [Same structure as Card 1]
```

## Quick CSS Classes List

### Container Classes
- `services-section` - Main section wrapper
- `services-header` - Header content wrapper
- `services-grid` - Cards grid container
- `service-card` - Individual service card

### Header Classes
- `services-label` - "WHAT WE OFFER" label
- `services-title` - "Explore Our Services" heading
- `services-description` - Description paragraph

### Card Content Classes
- `service-image-wrapper` - Image container
- `service-image` - The actual image
- `service-icon-overlay` - Circular icon badge
- `service-content` - Card text content area
- `service-title` - Service name heading
- `service-description-text` - Service description
- `service-read-more` - "Read More..." link

## Color Palette

- **Primary Orange:** `#F37021`
- **Dark Navy:** `#0B162C`
- **Light Background:** `#F5F7FA` to `#E8EDF2` (gradient)
- **Text Gray:** `#5A6C7D`
- **White:** `#FFFFFF`

## Key Animations

1. **fadeInUp** - Cards and text slide up on load
2. **fadeInDown** - Label slides down on load
3. **Hover Lift** - Cards move up 15px on hover
4. **Icon Rotation** - Icons rotate 360° on hover
5. **Image Zoom** - Images scale to 115% on hover
6. **Gradient Border** - Top border slides in on hover

## Recommended Images

### Land Freight
- Truck on highway
- Road transportation
- Suggested: `photo-1601584115197-04ecc0da31d7`

### Air Transport
- Airplane at gate
- Aircraft loading
- Suggested: `photo-1436491865332-7a61a109cc05`

### Sea Transport
- Container ship
- Ocean freight
- Suggested: `photo-1578575437130-527eed3abbec`

## Icons (Font Awesome)

- **Land Freight:** `fa-truck`
- **Air Transport:** `fa-plane`
- **Sea Transport:** `fa-ship`

## Responsive Breakpoints

- **Desktop:** Full 3-column grid
- **Tablet:** 2-column grid (auto-fit)
- **Mobile (<768px):** Single column stack

## Implementation Checklist

- [ ] Add section with `services-section` class
- [ ] Set gradient background (#F5F7FA to #E8EDF2)
- [ ] Add header with label, title, and description
- [ ] Create 3-column inner section with `services-grid` class
- [ ] Add service cards with proper structure
- [ ] Upload/link service images
- [ ] Add Font Awesome icons
- [ ] Apply all CSS classes
- [ ] Test hover effects
- [ ] Check mobile responsiveness
- [ ] Verify animations on page load

## Tips for Best Results

1. **Image Quality:** Use high-resolution images (minimum 800x600px)
2. **Consistent Sizing:** All images should have the same aspect ratio
3. **Icon Colors:** Icons will automatically change color on hover
4. **Text Length:** Keep descriptions concise (2-3 lines max)
5. **Link Targets:** Update "Read More" links to actual service pages
6. **Loading Performance:** Optimize images before uploading
7. **Browser Testing:** Test in Chrome, Firefox, and Safari
8. **Mobile Testing:** Always preview on actual mobile devices

## Advanced Customization

### Change Card Hover Height
```css
.service-card:hover {
    transform: translateY(-20px); /* Change from -15px */
}
```

### Adjust Animation Speed
```css
.service-card {
    transition: all 0.3s ease; /* Change from 0.5s */
}
```

### Modify Icon Size
```css
.service-icon-overlay i {
    font-size: 50px; /* Change from 40px */
}
```

### Change Grid Gap
```css
.services-grid {
    gap: 50px; /* Change from 40px */
}
```

---

**Created:** 2025-11-22  
**Version:** 1.0  
**Framework:** Elementor + Custom CSS
