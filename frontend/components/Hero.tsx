import React from 'react';

interface HeroProps {
    title: string;
    subtitle: string;
    bgImage: string;
    ctaText: string;
    ctaLink: string;
}

const Hero: React.FC<HeroProps> = ({ title, subtitle, bgImage, ctaText, ctaLink }) => {
    return (
        <section className="relative bg-navy pt-40 pb-56 overflow-hidden">
            {/* Map Background Pattern with Gradient */}
            <div className="absolute inset-0 opacity-30 pointer-events-none"
                style={{ backgroundImage: 'url(https://upload.wikimedia.org/wikipedia/commons/8/80/World_map_-_low_resolution.svg)', backgroundSize: 'cover', backgroundPosition: 'center' }}>
            </div>
            <div className="absolute inset-0 bg-gradient-to-b from-navy via-navy/90 to-navy/50 pointer-events-none"></div>

            <div className="container mx-auto px-4 relative z-10 text-center">
                <div className="inline-block mb-8">
                    <span className="text-orange font-bold tracking-[0.2em] text-xs uppercase flex items-center gap-3 justify-center">
                        <span className="w-8 h-[1px] bg-orange"></span>
                        We Go Global
                        <span className="w-8 h-[1px] bg-orange"></span>
                    </span>
                </div>

                <h1 className="text-5xl md:text-7xl font-extrabold text-white mb-8 leading-tight max-w-5xl mx-auto tracking-tight drop-shadow-lg">
                    {title}
                </h1>

                <p className="text-lg md:text-xl text-gray-200 mb-12 max-w-2xl mx-auto leading-relaxed font-medium drop-shadow-md">
                    {subtitle}
                </p>

                <div className="flex flex-col md:flex-row justify-center items-center gap-8 mb-24">
                    <a
                        href={ctaLink}
                        className="bg-orange text-white font-bold py-4 px-10 rounded-full hover:bg-orange/90 transition duration-300 shadow-lg shadow-orange/20 hover:shadow-orange/40 transform hover:-translate-y-1"
                    >
                        {ctaText}
                    </a>
                    <div className="flex items-center gap-4 text-white text-sm font-medium bg-white/5 py-3 px-6 rounded-full backdrop-blur-sm border border-white/10">
                        <div className="flex -space-x-3">
                            <div className="w-8 h-8 rounded-full bg-gray-200 border-2 border-navy overflow-hidden">
                                <img src="https://upload.wikimedia.org/wikipedia/en/a/ae/Flag_of_the_United_Kingdom.svg" alt="UK" className="w-full h-full object-cover" />
                            </div>
                            <div className="w-8 h-8 rounded-full bg-gray-200 border-2 border-navy overflow-hidden">
                                <img src="https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg" alt="Brazil" className="w-full h-full object-cover" />
                            </div>
                            <div className="w-8 h-8 rounded-full bg-gray-200 border-2 border-navy overflow-hidden">
                                <img src="https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg" alt="USA" className="w-full h-full object-cover" />
                            </div>
                        </div>
                        <span className="text-gray-300">20+ Country Operation</span>
                    </div>
                </div>

                {/* Overlapping Image Container */}
                <div className="relative max-w-5xl mx-auto -mb-72 rounded-3xl overflow-hidden shadow-2xl border-4 border-white/5 group">
                    <div className="absolute inset-0 bg-black/30 z-10 group-hover:bg-black/20 transition duration-500"></div>
                    <img
                        src={bgImage}
                        alt="Logistics"
                        className="w-full h-[550px] object-cover transform group-hover:scale-105 transition duration-700"
                    />
                    <div className="absolute inset-0 flex items-center justify-center z-20">
                        <button className="w-24 h-24 bg-white/10 backdrop-blur-md rounded-full flex items-center justify-center text-white text-3xl shadow-xl hover:scale-110 transition duration-300 border border-white/20 group-hover:bg-orange group-hover:border-orange">
                            <i className="fas fa-play ml-1"></i>
                        </button>
                    </div>
                </div>
            </div>
        </section>
    );
};

export default Hero;
