"use client";

import React, { useState } from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';

interface Destination {
    title: string;
    slug: string;
    region: string;
}

interface NavbarMenuProps {
    logoUrl?: string;
    destinations: Destination[];
}

const NavbarMenu: React.FC<NavbarMenuProps> = ({ logoUrl, destinations }) => {
    const defaultLogo = `${process.env.NEXT_PUBLIC_WORDPRESS_API_URL?.replace('/graphql', '') || ''}/wp-content/uploads/2025/11/logo.png`;
    const [isMenuOpen, setIsMenuOpen] = useState(false);
    const [activeRegion, setActiveRegion] = useState('Africa');
    const pathname = usePathname();

    // Group destinations by region
    const groupedDestinations = destinations.reduce((acc, dest) => {
        const region = dest.region || 'Africa';
        if (!acc[region]) acc[region] = [];
        acc[region].push(dest);
        return acc;
    }, {} as Record<string, Destination[]>);

    // Define region order, ensuring Africa is first
    const regionOrder = ['Africa', 'Europe', 'Asia', 'Americas', 'Middle East'];

    // Get available regions from data and sort them
    const availableRegions = Object.keys(groupedDestinations).sort((a, b) => {
        const indexA = regionOrder.indexOf(a);
        const indexB = regionOrder.indexOf(b);
        // If both are in the known list, sort by index
        if (indexA !== -1 && indexB !== -1) return indexA - indexB;
        // If only A is in list, A comes first
        if (indexA !== -1) return -1;
        // If only B is in list, B comes first
        if (indexB !== -1) return 1;
        // Otherwise alphabetical
        return a.localeCompare(b);
    });

    return (
        <nav className="absolute w-full z-50 bg-white/95 backdrop-blur-md shadow-md">
            <div className="container mx-auto px-4 py-4 flex justify-between items-center relative">
                <Link href="/" className="flex items-center gap-2">
                    <img src={logoUrl || defaultLogo} alt="Direct Cargo Express" className="h-16 w-auto object-contain" />
                </Link>

                {/* Mobile Menu Button */}
                <button
                    className="md:hidden text-navy hover:text-orange focus:outline-none"
                    onClick={() => setIsMenuOpen(!isMenuOpen)}
                >
                    <i className={`fas ${isMenuOpen ? 'fa-times' : 'fa-bars'} text-2xl`}></i>
                </button>

                {/* Desktop Menu */}
                <div className="hidden md:flex items-center space-x-8">
                    <Link href="/" className={`text-navy font-semibold hover:text-orange transition ${pathname === '/' ? 'text-orange' : ''}`}>
                        Home
                    </Link>

                    <Link href="/destinations" className={`text-navy font-semibold hover:text-orange transition ${pathname === '/destinations' ? 'text-orange' : ''}`}>
                        Destinations
                    </Link>

                    <Link href="#" className="text-navy font-semibold hover:text-orange transition">About Us</Link>
                    <Link href="#" className="text-navy font-semibold hover:text-orange transition">Contact</Link>

                    <Link href="#" className="bg-orange text-white px-6 py-2.5 rounded-full hover:bg-orange/90 transition duration-300 font-bold shadow-lg shadow-orange/20 text-sm">
                        Get Quote
                    </Link>
                </div>
            </div>

            {/* Mobile Menu Dropdown */}
            {isMenuOpen && (
                <div className="md:hidden bg-white border-t border-gray-100 py-4 px-4 space-y-4 shadow-lg animate-fade-in-down">
                    <Link href="/" className="block text-navy font-semibold hover:text-orange">Home</Link>
                    <div className="space-y-2">
                        <Link href="/destinations" className="block text-navy font-semibold hover:text-orange">Destinations</Link>
                        <div className="pl-4 space-y-4">
                            {availableRegions.map(region => (
                                <div key={region}>
                                    <span className="text-xs font-bold text-gray-400 uppercase">{region}</span>
                                    <div className="grid grid-cols-2 gap-2 mt-1">
                                        {groupedDestinations[region].map(dest => (
                                            <Link key={dest.slug} href={`/destination/${dest.slug}`} className="text-sm text-gray-600 hover:text-orange block py-1">
                                                {dest.title}
                                            </Link>
                                        ))}
                                    </div>
                                </div>
                            ))}
                        </div>
                    </div>
                    <Link href="#" className="block text-navy font-semibold hover:text-orange">About Us</Link>
                    <Link href="#" className="block text-navy font-semibold hover:text-orange">Contact</Link>
                    <Link href="#" className="block text-center bg-orange text-white py-3 rounded-lg font-bold">Get Quote</Link>
                </div>
            )}
        </nav>
    );
};

export default NavbarMenu;
