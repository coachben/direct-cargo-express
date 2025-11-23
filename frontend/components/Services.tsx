import React from 'react';

interface Service {
    title: string;
    icon: string;
    description: string;
    imageUrl?: string;
}

interface ServicesProps {
    services: Service[];
}

const Services: React.FC<ServicesProps> = ({ services }) => {
    return (
        <section className="py-32 bg-gray-50">
            <div className="container mx-auto px-4">
                <div className="text-center mb-20">
                    <span className="text-orange font-bold tracking-[0.2em] text-xs uppercase mb-3 block">What We Offer</span>
                    <h2 className="text-4xl md:text-5xl font-bold text-navy mb-6 tracking-tight">Explore Our Services</h2>
                    <p className="text-gray-500 max-w-2xl mx-auto text-lg font-light">
                        Tailor made forwarding solutions for personal or business needs.
                    </p>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
                    {services.map((service, index) => (
                        <div key={index} className="group relative h-[500px] rounded-[2rem] overflow-hidden shadow-xl cursor-pointer bg-navy">
                            {/* Background Image */}
                            <div
                                className="absolute inset-0 bg-cover bg-center transition duration-700 group-hover:scale-110 opacity-80 group-hover:opacity-100"
                                style={{ backgroundImage: `url(${service.imageUrl || `https://source.unsplash.com/800x600/?logistics,${service.title.split(' ')[0]}`})` }}
                            ></div>
                            <div className="absolute inset-0 bg-gradient-to-t from-navy/95 via-navy/70 to-transparent transition duration-300"></div>

                            {/* Circular Overlay Content */}
                            <div className="absolute -bottom-32 left-1/2 transform -translate-x-1/2 w-[140%] h-[350px] bg-white rounded-[100%] flex flex-col items-center justify-start pt-12 transition-all duration-500 group-hover:-bottom-24 shadow-2xl">
                                <div className="text-orange text-5xl mb-4 transform group-hover:scale-110 transition duration-300">
                                    <i className={`fas ${service.icon} `}></i>
                                </div>
                                <h3 className="text-2xl font-bold text-navy mb-2">{service.title}</h3>
                                <div className="h-0 overflow-hidden group-hover:h-auto transition-all duration-300 text-center px-12">
                                    <p className="text-gray-600 text-sm mb-4 line-clamp-2 font-medium">{service.description}</p>
                                    <span className="text-orange font-bold text-xs uppercase tracking-wider flex items-center justify-center gap-2">
                                        Read More <i className="fas fa-arrow-right"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
};

export default Services;
