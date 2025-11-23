import React from 'react';
import Link from 'next/link';

const Navbar = () => {
    return (
        <nav className="absolute w-full z-50 bg-white shadow-md">
            <div className="container mx-auto px-4 py-4 flex justify-between items-center">
                <Link href="/" className="flex items-center gap-2">
                    <img src="http://directcargo.local/wp-content/uploads/2025/11/logo.png" alt="Direct Cargo Express" className="h-16 w-auto object-contain" />
                </Link>
                <div className="hidden md:flex space-x-8">
                    <Link href="#" className="text-navy font-semibold hover:text-orange transition">Home</Link>
                    <Link href="#" className="text-navy font-semibold hover:text-orange transition">Services</Link>
                    <Link href="#" className="text-navy font-semibold hover:text-orange transition">About Us</Link>
                    <Link href="#" className="text-navy font-semibold hover:text-orange transition">Contact</Link>
                </div>
                <Link href="#" className="bg-orange text-white px-8 py-3 rounded-full hover:bg-orange/90 transition duration-300 font-bold shadow-lg shadow-orange/20">
                    Get Quote
                </Link>
            </div>
        </nav>
    );
};

export default Navbar;
