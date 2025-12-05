import React from 'react';

const Footer = ({ logoUrl }: { logoUrl?: string }) => {
    const defaultLogo = `${process.env.NEXT_PUBLIC_WORDPRESS_API_URL?.replace('/graphql', '') || ''}/wp-content/uploads/2025/11/logo.png`;

    return (
        <footer className="bg-gray-900 text-white py-12">
            <div className="container mx-auto px-4 grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <h3 className="text-xl font-bold mb-4">Direct Cargo</h3>
                    <p className="text-gray-400 mb-6">
                        Your reliable partner for global logistics and shipping solutions.
                    </p>
                    <img src={logoUrl || defaultLogo} alt="Direct Cargo Express" className="h-12 w-auto object-contain brightness-0 invert" />
                </div>
                <div>
                    <h4 className="text-lg font-bold mb-4">Quick Links</h4>
                    <ul className="space-y-2 text-gray-400">
                        <li><a href="#" className="hover:text-white">Home</a></li>
                        <li><a href="#" className="hover:text-white">Services</a></li>
                        <li><a href="#" className="hover:text-white">About Us</a></li>
                        <li><a href="#" className="hover:text-white">Contact</a></li>
                    </ul>
                </div>
                <div>
                    <h4 className="text-lg font-bold mb-4">Services</h4>
                    <ul className="space-y-2 text-gray-400">
                        <li><a href="#" className="hover:text-white">Air Freight</a></li>
                        <li><a href="#" className="hover:text-white">Ocean Freight</a></li>
                        <li><a href="#" className="hover:text-white">Road Transport</a></li>
                        <li><a href="#" className="hover:text-white">Warehousing</a></li>
                    </ul>
                </div>
                <div>
                    <h4 className="text-lg font-bold mb-4">Contact Us</h4>
                    <p className="text-gray-400 mb-2">Unit 13, 1000 North Circular Road, London, NW2 7JP</p>
                    <p className="text-gray-400 mb-2">info@directcargoexpress.com</p>
                    <a
                        href="https://wa.me/447375964786"
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-gray-400 hover:text-white transition-colors"
                    >
                        +44 7375 964 786
                    </a>
                </div>
            </div>
            <div className="border-t border-gray-800 mt-12 pt-8 text-center text-gray-500">
                &copy; {new Date().getFullYear()} Direct Cargo Express. All rights reserved.
            </div>
        </footer>
    );
};

export default Footer;
