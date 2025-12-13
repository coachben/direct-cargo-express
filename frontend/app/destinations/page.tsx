import React from 'react';
import client from "@/lib/apollo-client";
import { gql } from "@apollo/client";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import Link from 'next/link';
import "@fortawesome/fontawesome-free/css/all.min.css";

const GET_ALL_DESTINATIONS = gql`
  query GetAllDestinations {
    destinations(first: 100) {
      nodes {
        title
        slug
        featuredImage {
          node {
            sourceUrl
          }
        }
        destinationFields {
          destinationRegion
        }
      }
    }
    generalSettings {
        siteLogoUrl
    }
  }
`;

export const revalidate = 0;

export default async function DestinationsPage() {
    const { data } = await client.query<any>({
        query: GET_ALL_DESTINATIONS,
        fetchPolicy: "no-cache"
    });

    const destinations = data?.destinations?.nodes?.map((node: any) => ({
        title: node.title,
        slug: node.slug,
        flagUrl: node.featuredImage?.node?.sourceUrl || "",
        region: Array.isArray(node.destinationFields?.destinationRegion)
            ? node.destinationFields?.destinationRegion[0]
            : node.destinationFields?.destinationRegion || "Africa",
    })) || [];

    const groupedDestinations = destinations.reduce((acc: any, dest: any) => {
        const region = dest.region || 'Africa';
        if (!acc[region]) acc[region] = [];
        acc[region].push(dest);
        return acc;
    }, {});

    // Sort countries within each region alphabetically
    Object.keys(groupedDestinations).forEach(region => {
        groupedDestinations[region].sort((a: any, b: any) => a.title.localeCompare(b.title));
    });

    const regionOrder = ['Africa', 'Europe', 'Asia', 'Americas', 'Middle East'];

    const sortedRegions = Object.keys(groupedDestinations).sort((a, b) => {
        const indexA = regionOrder.indexOf(a);
        const indexB = regionOrder.indexOf(b);
        if (indexA !== -1 && indexB !== -1) return indexA - indexB;
        if (indexA !== -1) return -1;
        if (indexB !== -1) return 1;
        return a.localeCompare(b);
    });

    return (
        <main className="min-h-screen flex flex-col bg-gray-50">
            <Navbar logoUrl={data?.generalSettings?.siteLogoUrl} />

            <div className="relative bg-navy pt-32 pb-12 overflow-hidden">
                <div className="absolute inset-0 opacity-10 pointer-events-none"
                    style={{
                        backgroundImage: 'url(https://upload.wikimedia.org/wikipedia/commons/8/80/World_map_-_low_resolution.svg)',
                        backgroundSize: 'cover',
                        backgroundPosition: 'center'
                    }}
                ></div>
                <div className="absolute inset-0 bg-gradient-to-b from-navy/90 to-navy"></div>

                <div className="container mx-auto px-4 relative z-10 text-center">
                    <h1 className="text-3xl md:text-4xl font-bold text-white mb-2 tracking-tight">
                        Our Destinations
                    </h1>
                    <p className="text-gray-300 max-w-2xl mx-auto text-base">
                        Fast and reliable shipping to key destinations worldwide.
                    </p>
                </div>
            </div>

            <div className="container mx-auto px-4 py-12 space-y-12">
                {sortedRegions.map((region) => (
                    <div key={region} className="scroll-mt-32" id={region.toLowerCase()}>
                        <div className="flex items-center gap-4 mb-6">
                            <h2 className="text-2xl font-bold text-navy">{region}</h2>
                            <div className="h-px flex-grow bg-gray-200"></div>
                        </div>

                        {/* Compact Grid */}
                        <div className="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-5 gap-4">
                            {groupedDestinations[region].map((dest: any) => (
                                <Link
                                    key={dest.slug}
                                    href={`/destination/${dest.slug}`}
                                    className="group bg-white rounded-lg p-4 flex flex-col items-center justify-center border border-gray-100 shadow-sm hover:shadow-md hover:border-orange/30 transition-all duration-300"
                                >
                                    <div className="w-16 h-16 rounded-full overflow-hidden shadow-sm border-2 border-gray-50 group-hover:border-orange/20 mb-3 transition-colors relative">
                                        {dest.flagUrl ? (
                                            <img
                                                src={dest.flagUrl}
                                                alt={dest.title}
                                                className="w-full h-full object-cover"
                                            />
                                        ) : (
                                            <div className="w-full h-full bg-gray-100 flex items-center justify-center text-gray-300">
                                                <i className="fas fa-flag"></i>
                                            </div>
                                        )}
                                    </div>
                                    <span className="text-center font-bold text-navy text-sm md:text-base leading-tight group-hover:text-orange transition-colors">
                                        {dest.title}
                                    </span>
                                </Link>
                            ))}
                        </div>
                    </div>
                ))}

                {sortedRegions.length === 0 && (
                    <div className="text-center py-20 text-gray-500">
                        <p>No destinations found.</p>
                    </div>
                )}
            </div>

            <Footer logoUrl={data?.generalSettings?.siteLogoUrl} />
        </main>
    );
}
