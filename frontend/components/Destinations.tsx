import React from 'react';
import Link from 'next/link';

interface Destination {
    title: string;
    flagUrl?: string;
    slug: string;
}

interface DestinationsProps {
    destinations: Destination[];
}

const Destinations: React.FC<DestinationsProps> = ({ destinations }) => {
    return (
        <section className="py-24 bg-white relative overflow-hidden">
            {/* Decorative Elements */}
            <div className="absolute top-0 left-0 w-64 h-64 bg-orange/5 rounded-full blur-3xl -translate-x-1/2 -translate-y-1/2"></div>
            <div className="absolute bottom-0 right-0 w-96 h-96 bg-navy/5 rounded-full blur-3xl translate-x-1/3 translate-y-1/3"></div>

            <div className="container mx-auto px-4 text-center relative z-10">
                <h2 className="text-3xl md:text-4xl font-bold text-navy mb-16 tracking-tight">We Operate In</h2>

                <div className="flex flex-wrap justify-center gap-12 md:gap-20">
                    {destinations.map((dest, index) => (
                        <Link
                            key={index}
                            href={`/destination/${dest.slug}`}
                            className="flex flex-col items-center group" // Updated className
                        >
                            <div className="w-24 h-24 rounded-full overflow-hidden shadow-lg border-4 border-white transition duration-300 group-hover:scale-110 group-hover:shadow-2xl group-hover:border-orange relative">
                                {dest.flagUrl ? ( // Changed to dest.flagUrl
                                    <img
                                        src={dest.flagUrl} // Changed to dest.flagUrl
                                        alt={dest.title} // Changed to dest.title
                                        className="w-full h-full object-cover" // Updated className
                                    />
                                ) : (
                                    <div className="w-full h-full bg-gray-200 flex items-center justify-center text-gray-400">
                                        <i className="fas fa-flag"></i>
                                    </div>
                                )}
                                <div className="absolute inset-0 bg-black/0 group-hover:bg-black/10 transition duration-300"></div> {/* Updated bg-navy/0 to bg-black/0 and bg-navy/10 to bg-black/10 */}
                            </div>
                            <span className="mt-4 text-navy font-bold text-lg group-hover:text-orange transition duration-300">{dest.title}</span> {/* Updated mt-6 to mt-4 and removed tracking-wide */}
                            {/* Removed the div with bg-orange/20 */}
                        </Link>
                    ))}
                </div>
            </div>
        </section>
    );
};

export default Destinations;
