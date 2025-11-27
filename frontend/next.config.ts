import type { NextConfig } from "next";

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
