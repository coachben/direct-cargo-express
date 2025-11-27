import React from 'react';

interface AboutProps {
    title: string;
    content: string;
    image: string;
    phone: string;
}

const About: React.FC<AboutProps> = ({ title, content, image, phone }) => {
    return (
        <section className="py-24 bg-orange/5">
            <div className="container mx-auto px-4 flex flex-col lg:flex-row items-center gap-16">
                <div className="lg:w-1/2">
                    <span className="text-orange font-bold tracking-widest text-sm uppercase mb-2 block">About Company</span>
                    <h2 className="text-4xl md:text-5xl font-bold text-navy mb-8 leading-tight">
                        World wide Delivery <br /> Solutions
                    </h2>

                    <div className="mb-8">
                        <div
                            className="text-gray-600 leading-relaxed text-lg"
                            dangerouslySetInnerHTML={{ __html: content }}
                        />
                    </div>

                    <div className="flex items-center gap-8">
                        <div className="flex items-center gap-4">
                            <div className="w-12 h-12 rounded-full border-2 border-orange flex items-center justify-center text-orange text-xl">
                                <i className="fas fa-phone-alt"></i>
                            </div>
                            <div>
                                <span className="block text-xs text-gray-500 uppercase tracking-wider">Have A Question?</span>
                                <span className="block text-navy font-bold text-lg">{phone}</span>
                            </div>
                        </div>
                        <a href="#" className="bg-orange text-white px-8 py-4 rounded-lg font-bold hover:bg-orange/90 transition shadow-lg shadow-orange/20">
                            More About Us
                        </a>
                    </div>
                </div>

                <div className="lg:w-1/2 relative">
                    <div className="relative rounded-3xl overflow-hidden shadow-2xl border-8 border-white">
                        <img src={image} alt="About Us" className="w-full h-[600px] object-cover" />
                    </div>
                    {/* Floating Badge */}
                    <div className="absolute -bottom-10 -right-10 bg-white p-6 rounded-3xl shadow-2xl flex items-center gap-4 animate-bounce-slow border border-gray-100">
                        <img src={`${process.env.NEXT_PUBLIC_WORDPRESS_API_URL?.replace('/graphql', '') || ''}/wp-content/uploads/2025/11/logo.png`} alt="Direct Cargo Express" className="h-12 w-auto object-contain" />
                    </div>
                </div>
            </div>
        </section>
    );
};

export default About;
