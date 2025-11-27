"use client";

import React, { useState } from 'react';
import Link from 'next/link';

interface Destination {
    title: string;
    flagUrl?: string;
    slug: string;
    region?: string;
}

interface DestinationsProps {
    destinations: Destination[];
}

const Destinations: React.FC<DestinationsProps> = ({ destinations }) => {
    const [activeTab, setActiveTab] = useState('Africa');
    const tabs = ['Africa', 'Europe', 'Asia', 'Americas', 'Middle East'];

    const filteredDestinations = destinations.filter(dest =>
        (dest.region || 'Africa') === activeTab
    );

    return (
        <section className="py-24 bg-white relative overflow-hidden">
            {/* Decorative Elements */}
            <div className="absolute top-0 left-0 w-64 h-64 bg-orange/5 rounded-full blur-3xl -translate-x-1/2 -translate-y-1/2"></div>
            <div className="absolute bottom-0 right-0 w-96 h-96 bg-navy/5 rounded-full blur-3xl translate-x-1/3 translate-y-1/3"></div>

            <div className="container mx-auto px-4 text-center relative z-10">
                <h2 className="text-3xl md:text-4xl font-bold text-navy mb-12 tracking-tight">We Operate In</h2>

                {/* Tabs */}
                <div className="flex flex-wrap justify-center gap-4 mb-16">
                    {tabs.map((tab) => (
                        <button
                            key={tab}
                            onClick={() => setActiveTab(tab)}
                            className={`px-6 py-2 rounded-full font-bold text-sm transition-all duration-300 border-2 ${activeTab === tab
                                ? 'bg-navy text-white border-navy shadow-lg transform scale-105'
                                : 'bg-white text-gray-500 border-gray-200 hover:border-orange hover:text-orange'
                                }`}
                        >
                            {tab}
                        </button>
                    ))}
                </div>

                <div className="flex flex-wrap justify-center gap-12 md:gap-20 min-h-[200px]">
                    {filteredDestinations.length > 0 ? (
                        filteredDestinations.map((dest, index) => (
                            <Link
                                key={index}
                                href={`/destination/${dest.slug || 'angola'}`}
                                className="flex flex-col items-center group animate-fade-in-up"
                            >
                                <div className="w-24 h-24 rounded-full overflow-hidden shadow-lg border-4 border-white transition duration-300 group-hover:scale-110 group-hover:shadow-2xl group-hover:border-orange relative">
                                    {dest.flagUrl ? (
                                        <img
                                            src={dest.flagUrl}
                                            alt={dest.title}
                                            className="w-full h-full object-cover"
                                        />
                                    ) : (
                                        <div className="w-full h-full bg-gray-200 flex items-center justify-center text-gray-400">
                                            <i className="fas fa-flag"></i>
                                        </div>
                                    )}
                                    <div className="absolute inset-0 bg-black/0 group-hover:bg-black/10 transition duration-300"></div>
                                </div>
                                <span className="mt-4 text-navy font-bold text-lg group-hover:text-orange transition duration-300">{dest.title}</span>
                            </Link>
                        ))
                    ) : (
                        <div className="flex flex-col items-center justify-center text-gray-400">
                            <i className="fas fa-map-marker-alt text-4xl mb-4 opacity-50"></i>
                            <p>No destinations found in {activeTab}</p>
                        </div>
                    )}
                </div>
            </div>
        </section>
    );
};

export default Destinations;
