import React from 'react';

interface AboutProps {
    title: string;
    content: string;
    image: string;
    phone: string;
    logoUrl?: string;
}

const About: React.FC<AboutProps> = ({ title, content, image, phone, logoUrl }) => {
    const finalLogoUrl = logoUrl || `${process.env.NEXT_PUBLIC_WORDPRESS_API_URL?.replace('/graphql', '') || ''}/wp-content/uploads/2025/11/logo.png`;

    return (
        <section className="py-24 bg-navy relative overflow-hidden">
            {/* Background Pattern */}
            <div className="absolute top-0 right-0 w-1/2 h-full bg-gradient-to-l from-white/5 to-transparent pointer-events-none"></div>

            <div className="container mx-auto px-4 flex flex-col lg:flex-row items-center gap-16 relative z-10">
                <div className="lg:w-1/2">
                    <span className="text-orange font-bold tracking-widest text-sm uppercase mb-2 block">About Company</span>
                    <h2 className="text-4xl md:text-5xl font-bold text-white mb-8 leading-tight">
                        {title || "World wide Delivery Solutions"}
                    </h2>

                    <div className="mb-8">
                        <div
                            className="text-gray-300 leading-relaxed text-lg font-light"
                            dangerouslySetInnerHTML={{ __html: content }}
                        />
                    </div>

                    <div className="flex items-center gap-8">
                        <div className="flex items-center gap-4">
                            <div className="w-12 h-12 rounded-full border-2 border-orange flex items-center justify-center text-orange text-xl bg-orange/10">
                                <i className="fas fa-phone-alt"></i>
                            </div>
                            <div>
                                <span className="block text-xs text-gray-400 uppercase tracking-wider">Have A Question?</span>
                                <a
                                    href={`https://wa.me/${phone.replace(/[^0-9]/g, '')}`}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="block text-white font-bold text-lg hover:text-orange transition-colors"
                                >
                                    {phone}
                                </a>
                            </div>
                        </div>
                        <a href="#" className="bg-orange text-white px-8 py-4 rounded-lg font-bold hover:bg-orange/90 transition shadow-lg shadow-orange/20">
                            More About Us
                        </a>
                    </div>
                </div>

                <div className="lg:w-1/2 relative">
                    <div className="relative rounded-3xl overflow-hidden shadow-2xl border-4 border-white/10 group">
                        <div className="absolute inset-0 bg-black/20 group-hover:bg-transparent transition duration-500"></div>
                        <img src={image} alt="About Us" className="w-full h-[600px] object-cover transform group-hover:scale-105 transition duration-700" />
                    </div>
                    {/* Floating Badge */}
                    <div className="absolute -bottom-10 -right-10 bg-white p-6 rounded-3xl shadow-2xl flex items-center gap-4 animate-bounce-slow border-4 border-navy">
                        <img src={finalLogoUrl} alt="Direct Cargo Express" className="h-12 w-auto object-contain" />
                    </div>
                </div>
            </div>
        </section>
    );
};

export default About;
