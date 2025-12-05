import type { NextConfig } from "next";

// Force restart

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'http',
        hostname: 'directcargo.local',
      },
      {
        protocol: 'https',
        hostname: '**.up.railway.app',
      },
    ],
  },
  env: {
    NEXT_PUBLIC_WORDPRESS_API_URL: process.env.NEXT_PUBLIC_WORDPRESS_API_URL ||
      (process.env.RAILWAY_PUBLIC_DOMAIN ? `https://${process.env.RAILWAY_PUBLIC_DOMAIN}/graphql` : 'http://directcargo.local/graphql'),
  },
};

export default nextConfig;
