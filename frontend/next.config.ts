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
};

export default nextConfig;
