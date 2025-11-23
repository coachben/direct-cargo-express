# 🚀 Headless WordPress + React: Complete Setup Guide

## Executive Summary

Based on 2024 best practices, here are your **TOP 3 RECOMMENDED OPTIONS** for headless WordPress with React:

### 🏆 Option 1: Next.js + WPGraphQL (RECOMMENDED)
**Best for:** Production sites, SEO-critical projects, fast development
- ✅ Server-Side Rendering (SSR) & Static Generation (SSG)
- ✅ Excellent SEO out of the box
- ✅ Fast development with hot reload
- ✅ Easy deployment (Vercel, Netlify)
- ✅ Large community & ecosystem

### 🥈 Option 2: Faust.js (WordPress-Specific)
**Best for:** WordPress developers transitioning to headless
- ✅ Built on Next.js specifically for WordPress
- ✅ WordPress template hierarchy in JavaScript
- ✅ Post previews built-in
- ✅ Integrated authentication
- ✅ Official WP Engine support

### 🥉 Option 3: Gatsby + WPGraphQL
**Best for:** Content-heavy sites, blogs, marketing sites
- ✅ Blazing fast static sites
- ✅ Excellent for blogs/content sites
- ✅ Built-in performance optimizations
- ✅ GraphQL data layer
- ⚠️ Slower build times for large sites

---

## 🎯 Recommended Stack for DirectCargo

```
Frontend:  Next.js 14 (React 18)
Backend:   WordPress (Headless CMS)
Data:      WPGraphQL
Styling:   Your existing modern-cargo-style.css + Tailwind CSS (optional)
Hosting:   Vercel (frontend) + Your current WordPress host (backend)
```

---

## 📊 Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    USER'S BROWSER                           │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│              NEXT.JS FRONTEND (React)                       │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  - Pages (Home, Services, About, Contact)            │  │
│  │  - Components (Header, Footer, ServiceCard)          │  │
│  │  - Your modern-cargo-style.css                       │  │
│  │  - Fast, SEO-optimized, Beautiful UI                 │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
                            ↓ (GraphQL Queries)
┌─────────────────────────────────────────────────────────────┐
│           WORDPRESS (Headless CMS)                          │
│  ┌──────────────────────────────────────────────────────┐  │
│  │  WPGraphQL Plugin                                    │  │
│  │  ↓                                                    │  │
│  │  WordPress Admin (Content Management)                │  │
│  │  - Posts, Pages, Custom Post Types                   │  │
│  │  - ACF (Advanced Custom Fields)                      │  │
│  │  - Media Library                                     │  │
│  │  - Users & Permissions                               │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
```

---

## 🛠️ Implementation Plan

### Phase 1: WordPress Setup (Backend)

#### 1.1 Install Required Plugins

```bash
# Login to WordPress Admin
http://directcargo.local/wp-admin

# Install these plugins:
1. WPGraphQL (Free) - GraphQL API for WordPress
2. WPGraphQL for Advanced Custom Fields (Free) - Expose ACF fields
3. WPGraphiQL (Free) - GraphQL IDE for testing queries
4. Headless Mode (Optional) - Disable WordPress frontend
```

#### 1.2 Configure WordPress for Headless

```php
// Add to wp-config.php or functions.php
define('HEADLESS_MODE_CLIENT_URL', 'http://localhost:3000');

// Enable CORS for development
add_action('init', function() {
    header("Access-Control-Allow-Origin: http://localhost:3000");
    header("Access-Control-Allow-Credentials: true");
});
```

#### 1.3 Create Custom Post Types (Services Example)

```php
// Add to functions.php
function directcargo_register_services() {
    register_post_type('service', [
        'labels' => [
            'name' => 'Services',
            'singular_name' => 'Service'
        ],
        'public' => true,
        'show_in_graphql' => true,  // Important!
        'graphql_single_name' => 'service',
        'graphql_plural_name' => 'services',
        'supports' => ['title', 'editor', 'thumbnail', 'custom-fields']
    ]);
}
add_action('init', 'directcargo_register_services');
```

---

### Phase 2: Next.js Frontend Setup

#### 2.1 Create Next.js Project

```bash
# Navigate to your project directory
cd /Users/benardomondi/Local\ Sites/directcargo/app/public

# Create a new Next.js app
npx create-next-app@latest directcargo-frontend

# Options to select:
# ✓ TypeScript? No (or Yes if you prefer)
# ✓ ESLint? Yes
# ✓ Tailwind CSS? Yes (optional, you have your own CSS)
# ✓ `src/` directory? Yes
# ✓ App Router? Yes (recommended)
# ✓ Import alias? Yes (@/*)

# Navigate into the project
cd directcargo-frontend

# Install GraphQL dependencies
npm install graphql graphql-request
npm install @apollo/client
```

#### 2.2 Project Structure

```
directcargo-frontend/
├── src/
│   ├── app/
│   │   ├── page.js              # Homepage
│   │   ├── services/
│   │   │   └── page.js          # Services page
│   │   ├── about/
│   │   │   └── page.js          # About page
│   │   └── layout.js            # Root layout
│   ├── components/
│   │   ├── Header.js
│   │   ├── Footer.js
│   │   ├── ServiceCard.js
│   │   └── HeroSection.js
│   ├── lib/
│   │   └── wordpress.js         # WordPress API functions
│   └── styles/
│       └── modern-cargo.css     # Your existing CSS
├── public/
│   └── images/
└── package.json
```

---

### Phase 3: Connect Next.js to WordPress

#### 3.1 Create WordPress API Client

```javascript
// src/lib/wordpress.js
import { GraphQLClient } from 'graphql-request';

const endpoint = process.env.NEXT_PUBLIC_WORDPRESS_API_URL || 'http://directcargo.local/graphql';

export const client = new GraphQLClient(endpoint, {
  headers: {
    'Content-Type': 'application/json',
  },
});

// Fetch all services
export async function getServices() {
  const query = `
    query GetServices {
      services {
        nodes {
          id
          title
          content
          featuredImage {
            node {
              sourceUrl
              altText
            }
          }
          serviceFields {
            icon
            description
          }
        }
      }
    }
  `;
  
  const data = await client.request(query);
  return data.services.nodes;
}

// Fetch homepage data
export async function getHomepage() {
  const query = `
    query GetHomepage {
      page(id: "home", idType: URI) {
        title
        content
        homepageFields {
          heroTitle
          heroSubtitle
          heroImage {
            sourceUrl
          }
        }
      }
    }
  `;
  
  const data = await client.request(query);
  return data.page;
}
```

#### 3.2 Create Homepage Component

```javascript
// src/app/page.js
import { getHomepage, getServices } from '@/lib/wordpress';
import HeroSection from '@/components/HeroSection';
import ServiceCard from '@/components/ServiceCard';

export default async function Home() {
  const homepage = await getHomepage();
  const services = await getServices();

  return (
    <main>
      <HeroSection data={homepage.homepageFields} />
      
      <section className="services-section">
        <div className="services-header">
          <div className="services-label">WHAT WE OFFER</div>
          <h2 className="services-title">Explore Our Services</h2>
          <p className="services-description">
            {homepage.homepageFields.servicesDescription}
          </p>
        </div>

        <div className="services-grid">
          {services.map((service) => (
            <ServiceCard key={service.id} service={service} />
          ))}
        </div>
      </section>
    </main>
  );
}
```

#### 3.3 Create Service Card Component

```javascript
// src/components/ServiceCard.js
import Image from 'next/image';
import Link from 'next/link';

export default function ServiceCard({ service }) {
  return (
    <div className="service-card">
      <div className="service-image-wrapper">
        <Image
          src={service.featuredImage?.node?.sourceUrl || '/placeholder.jpg'}
          alt={service.featuredImage?.node?.altText || service.title}
          fill
          className="service-image"
          sizes="(max-width: 768px) 100vw, 33vw"
        />
        <div className="service-icon-overlay">
          <i className={`fas fa-${service.serviceFields.icon}`}></i>
        </div>
      </div>
      
      <div className="service-content">
        <h3 className="service-title">{service.title}</h3>
        <p className="service-description-text">
          {service.serviceFields.description}
        </p>
        <Link href={`/services/${service.slug}`} className="service-read-more">
          Read More...
        </Link>
      </div>
    </div>
  );
}
```

---

## 🎨 Styling Integration

### Copy Your Existing CSS

```bash
# Copy your modern-cargo-style.css to Next.js
cp /Users/benardomondi/Local\ Sites/directcargo/app/public/modern-cargo-style.css \
   /Users/benardomondi/Local\ Sites/directcargo/app/public/directcargo-frontend/src/styles/
```

### Import in Layout

```javascript
// src/app/layout.js
import '@/styles/modern-cargo.css';
import { Inter, Manrope } from 'next/font/google';

const inter = Inter({ subsets: ['latin'], variable: '--font-body' });
const manrope = Manrope({ subsets: ['latin'], variable: '--font-heading' });

export default function RootLayout({ children }) {
  return (
    <html lang="en" className={`${inter.variable} ${manrope.variable}`}>
      <head>
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        />
      </head>
      <body>{children}</body>
    </html>
  );
}
```

---

## 🚀 Development Workflow

### 1. Start WordPress (Backend)
```bash
# Your WordPress is already running at:
http://directcargo.local
```

### 2. Start Next.js (Frontend)
```bash
cd directcargo-frontend
npm run dev
# Opens at http://localhost:3000
```

### 3. Content Management Flow
```
1. Content Editor logs into WordPress Admin
   → http://directcargo.local/wp-admin

2. Creates/edits content (posts, pages, services)
   → Uses familiar WordPress interface

3. Content is automatically available via GraphQL
   → http://directcargo.local/graphql

4. Next.js fetches and displays content
   → http://localhost:3000
   → Automatically updates on page refresh
   → Can enable ISR for automatic updates
```

---

## 📦 Environment Variables

```bash
# Create .env.local in Next.js project
NEXT_PUBLIC_WORDPRESS_API_URL=http://directcargo.local/graphql
WORDPRESS_AUTH_REFRESH_TOKEN=your_token_here
```

---

## 🎯 Key Benefits of This Setup

### For Developers:
✅ **Fast Development** - Hot reload, modern tooling
✅ **Type Safety** - GraphQL provides schema validation
✅ **Component Reusability** - Build once, use everywhere
✅ **Modern Stack** - React, Next.js, latest best practices
✅ **Version Control** - Git-friendly, easy collaboration

### For Content Editors:
✅ **Familiar Interface** - Same WordPress admin they know
✅ **No Code Required** - Manage content visually
✅ **Preview Changes** - See updates before publishing
✅ **Media Management** - WordPress media library
✅ **User Permissions** - WordPress roles & capabilities

### For End Users:
✅ **Blazing Fast** - Static generation + CDN
✅ **SEO Optimized** - Server-side rendering
✅ **Beautiful UI** - Your modern design system
✅ **Mobile Responsive** - Built-in responsive design
✅ **Secure** - Separated frontend/backend

---

## 🔄 Deployment Strategy

### Frontend (Next.js)
```bash
# Deploy to Vercel (Recommended)
1. Push code to GitHub
2. Connect GitHub to Vercel
3. Auto-deploy on every push
4. Free SSL, CDN, automatic scaling

# Or deploy to Netlify
Similar process, also free tier available
```

### Backend (WordPress)
```bash
# Keep on your current host
- GoDaddy, Bluehost, or any WordPress host
- Just needs to expose GraphQL endpoint
- Can be on different domain
```

---

## 📚 Learning Resources

### Next.js + WordPress
- [Next.js WordPress Starter](https://github.com/vercel/next.js/tree/canary/examples/cms-wordpress)
- [WPGraphQL Documentation](https://www.wpgraphql.com/docs/introduction)
- [Faust.js Documentation](https://faustjs.org/)

### Video Tutorials
- "Headless WordPress with Next.js" - YouTube
- "WPGraphQL Complete Guide" - YouTube

---

## ⚡ Quick Start Commands

```bash
# 1. Install WPGraphQL in WordPress
# (Do this via WordPress Admin → Plugins → Add New)

# 2. Create Next.js project
npx create-next-app@latest directcargo-frontend
cd directcargo-frontend

# 3. Install dependencies
npm install graphql graphql-request @apollo/client

# 4. Create .env.local
echo "NEXT_PUBLIC_WORDPRESS_API_URL=http://directcargo.local/graphql" > .env.local

# 5. Start development
npm run dev
```

---

## 🎨 Migration Path from Elementor

### Option A: Gradual Migration
1. Keep Elementor for content editing
2. Use WordPress as headless CMS
3. Recreate Elementor designs in React components
4. Migrate page by page

### Option B: Full Migration
1. Export Elementor content
2. Convert to WordPress custom fields (ACF)
3. Build React components
4. Disable Elementor, go fully headless

**Recommendation:** Start with Option A, migrate critical pages first

---

## 💡 Next Steps

1. **Install WPGraphQL** in your WordPress
2. **Test GraphQL queries** using WPGraphiQL
3. **Create Next.js project** following the structure above
4. **Build one page** (e.g., Services) to test the workflow
5. **Iterate and expand** to other pages

---

**Created:** 2025-11-22  
**Stack:** Next.js 14 + WordPress + WPGraphQL  
**Status:** Production-Ready Architecture
