# 🚀 Services Section Integration Guide

## Quick Start (3 Methods)

### ✅ Method 1: WordPress Customizer (RECOMMENDED - Easiest)

1. **Login to WordPress Admin**
   - Go to: `http://directcargo.local/wp-admin`
   - Enter your credentials

2. **Add Custom CSS**
   - Navigate to: **Appearance → Customize → Additional CSS**
   - Copy ALL contents from `modern-cargo-style.css`
   - Paste into the Additional CSS field
   - Click **Publish**

3. **Edit Homepage with Elementor**
   - Go to: **Pages → Home → Edit with Elementor**
   - Find the section after "Worldwide Delivery"
   - Add a new section below it

4. **Build the Services Section**
   - Follow the structure in `services-section-demo.html`
   - Use the CSS classes from `services-section-reference.md`
   - Add the three service cards with images and icons

---

### 🔧 Method 2: Theme Functions (More Permanent)

1. **Upload CSS File**
   ```
   Upload modern-cargo-style.css to:
   wp-content/themes/hello-elementor/modern-cargo-style.css
   ```

2. **Edit functions.php**
   - Go to: **Appearance → Theme File Editor**
   - Select: **functions.php**
   - Add the code from `css-integration.php` at the bottom
   - Click **Update File**

3. **Verify CSS is Loaded**
   - Visit your homepage
   - Right-click → Inspect
   - Check if `modern-cargo-style.css` is loaded in the `<head>`

---

### ⚡ Method 3: Elementor Custom CSS (Section-Specific)

1. **Edit Page with Elementor**
   - Go to your homepage
   - Click **Edit with Elementor**

2. **Add CSS to Section**
   - Click on the Services Section
   - Go to: **Advanced → Custom CSS**
   - Paste only the Services Section CSS (lines 274-594 from modern-cargo-style.css)

---

## 📋 Step-by-Step Elementor Setup

### Step 1: Create Main Section

1. Add a new **Section** after Worldwide Delivery
2. **Section Settings:**
   - Layout: 1 Column
   - Content Width: Full Width (1140px)
   - Height: Default
   - Column Gap: Default

3. **Style Tab:**
   - Background Type: **Gradient**
   - Color 1: `#F5F7FA`
   - Color 2: `#E8EDF2`
   - Angle: 135°

4. **Advanced Tab:**
   - Padding: Top `80px`, Bottom `80px`
   - CSS Classes: `services-section`

---

### Step 2: Add Header Content

1. **Add Heading Widget** (Label)
   - Text: `WHAT WE OFFER`
   - HTML Tag: `div`
   - Alignment: Center
   - Advanced → CSS Classes: `services-label`

2. **Add Heading Widget** (Title)
   - Text: `Explore Our Services`
   - HTML Tag: `h2`
   - Alignment: Center
   - Advanced → CSS Classes: `services-title`

3. **Add Text Editor Widget** (Description)
   - Content: 
   ```
   If you would like tailor made forwarding solutions for personal or business then we can help.
   We provide road, sea and air freight for big or small projects and take care of your packaging
   needs and much more
   ```
   - Alignment: Center
   - Advanced → CSS Classes: `services-description`

---

### Step 3: Create Cards Grid

1. **Add Inner Section**
   - Columns: 3
   - Column Width: Equal (33.33% each)
   - Advanced → CSS Classes: `services-grid`

---

### Step 4: Build Each Service Card

**For EACH of the 3 columns, do the following:**

#### Card Container
1. Add **Container Widget** (or use column directly)
   - Advanced → CSS Classes: `service-card`

#### Image Section
2. Add **Image Widget**
   - Choose image (truck/plane/ship)
   - Size: Full
   - Advanced → CSS Classes: `service-image`
   - Wrap in div with class: `service-image-wrapper`

3. Add **Icon Widget** (overlaid on image)
   - Icon: 
     - Card 1: `fa-truck`
     - Card 2: `fa-plane`
     - Card 3: `fa-ship`
   - Advanced → CSS Classes: `service-icon-overlay`
   - Position: Absolute
   - Bottom: 20px
   - Left: 50%
   - Transform: translateX(-50%)

#### Content Section
4. Add **Container** for content
   - Advanced → CSS Classes: `service-content`

5. Add **Heading Widget** (Service Title)
   - Text: `Land Freight` / `Air Transport` / `Sea Transport`
   - HTML Tag: `h3`
   - Advanced → CSS Classes: `service-title`

6. Add **Text Editor** (Description)
   - Content: Service description (2-3 lines)
   - Advanced → CSS Classes: `service-description-text`

7. Add **Button Widget** (styled as link)
   - Text: `Read More...`
   - Link: `#` (update later)
   - Type: Link
   - Advanced → CSS Classes: `service-read-more`

---

## 🎨 Service Card Details

### Card 1: Land Freight
- **Image:** Truck on highway
- **Icon:** `fa-truck`
- **Title:** Land Freight
- **Description:** "Reliable ground transportation solutions for your cargo across all terrains and distances."

### Card 2: Air Transport
- **Image:** Airplane at gate
- **Icon:** `fa-plane`
- **Title:** Air Transport
- **Description:** "Fast and efficient air freight services for time-sensitive deliveries worldwide."

### Card 3: Sea Transport
- **Image:** Container ship
- **Icon:** `fa-ship`
- **Title:** Sea Transport
- **Description:** "Cost-effective ocean freight solutions for large-scale international shipping needs."

---

## 📸 Recommended Images

### Option 1: Use Unsplash (Free)
```
Land Freight: https://images.unsplash.com/photo-1601584115197-04ecc0da31d7
Air Transport: https://images.unsplash.com/photo-1436491865332-7a61a109cc05
Sea Transport: https://images.unsplash.com/photo-1578575437130-527eed3abbec
```

### Option 2: Upload Your Own
- Minimum size: 800x600px
- Aspect ratio: 4:3 or 16:9
- Format: JPG or PNG
- Optimize before upload (use TinyPNG.com)

---

## ✅ Integration Checklist

- [ ] CSS is loaded (Method 1, 2, or 3)
- [ ] Google Fonts loaded (Manrope & Inter)
- [ ] Font Awesome loaded
- [ ] Section created after Worldwide Delivery
- [ ] Section has `services-section` class
- [ ] Gradient background applied
- [ ] Header content added (label, title, description)
- [ ] 3-column grid created with `services-grid` class
- [ ] All 3 service cards built
- [ ] Images uploaded and set
- [ ] Icons added (truck, plane, ship)
- [ ] All CSS classes applied correctly
- [ ] Hover effects working
- [ ] Mobile responsive
- [ ] Page published

---

## 🧪 Testing

1. **Desktop View**
   - Cards should be in 3 columns
   - Hover over each card - should lift up
   - Icons should rotate on hover
   - Images should zoom slightly

2. **Tablet View**
   - Cards should adapt to 2 columns or stack
   - All effects should still work

3. **Mobile View**
   - Cards should stack vertically
   - Touch interactions should work
   - Text should be readable

---

## 🐛 Troubleshooting

### CSS Not Loading?
- Clear WordPress cache
- Clear browser cache (Cmd+Shift+R)
- Check if CSS file path is correct
- Verify CSS is in Additional CSS or functions.php

### Hover Effects Not Working?
- Make sure all CSS classes are applied
- Check browser console for errors
- Verify Font Awesome is loaded

### Images Not Showing?
- Check image URLs are correct
- Verify images are uploaded to Media Library
- Check file permissions

### Layout Broken on Mobile?
- Check responsive settings in Elementor
- Verify mobile padding/margins
- Test on actual device, not just browser resize

---

## 📞 Need Help?

1. Check `services-section-demo.html` for working example
2. Review `services-section-reference.md` for CSS classes
3. Inspect the demo page to see HTML structure
4. Compare your Elementor setup with the demo

---

**Last Updated:** 2025-11-22  
**Version:** 1.0  
**Compatible with:** Elementor 3.x, WordPress 6.x
