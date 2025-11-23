import React from 'react';
import { gql } from '@apollo/client';
import client from '../../../lib/apollo-client';
import Navbar from '../../../components/Navbar';
import Footer from '../../../components/Footer';
import QuoteForm from '../../../components/QuoteForm';

const GET_DESTINATION = gql`
  query GetDestination($slug: ID!) {
    destination(id: $slug, idType: SLUG) {
      title
      content
      featuredImage {
        node {
          sourceUrl
        }
      }
    }
    generalSettings {
      title
      description
    }
  }
`;

export async function generateStaticParams() {
    // Fetch all destinations to generate static pages
    const { data } = await client.query({
        query: gql`
            query GetAllDestinations {
                destinations {
                    nodes {
                        slug
                    }
                }
            }
        `
    });

    return data.destinations.nodes.map((node: any) => ({
        slug: node.slug,
    }));
}

export default async function DestinationPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params;

    const { data } = await client.query({
        query: GET_DESTINATION,
        variables: { slug },
    });

    const destination = data?.destination;

    if (!destination) {
        return <div>Destination not found</div>;
    }

    return (
        <main className="min-h-screen bg-gradient-to-br from-gray-50 via-white to-orange/5 font-sans">
            <Navbar />

            {/* Hero Header with Map & Flag */}
            <section className="relative bg-gradient-to-br from-navy via-[#003366] to-navy pt-32 pb-24 overflow-hidden">
                {/* Animated Background Elements */}
                <div className="absolute inset-0 opacity-10 pointer-events-none">
                    <div className="absolute top-20 left-10 w-72 h-72 bg-orange rounded-full blur-3xl animate-pulse"></div>
                    <div className="absolute bottom-20 right-10 w-96 h-96 bg-blue-400 rounded-full blur-3xl animate-pulse delay-1000"></div>
                </div>

                {/* Map Background */}
                <div className="absolute inset-0 opacity-15 pointer-events-none"
                    style={{ backgroundImage: 'url(https://upload.wikimedia.org/wikipedia/commons/8/80/World_map_-_low_resolution.svg)', backgroundSize: 'cover', backgroundPosition: 'center' }}>
                </div>
                <div className="absolute inset-0 bg-gradient-to-b from-transparent via-navy/50 to-navy pointer-events-none"></div>

                <div className="container mx-auto px-4 relative z-10">
                    <div className="flex flex-col md:flex-row items-center justify-between gap-8">
                        {/* Left: Flag */}
                        <div className="md:w-1/4 flex justify-center md:justify-start">
                            {destination.featuredImage?.node?.sourceUrl && (
                                <div className="animate-fade-in">
                                    <div className="relative group">
                                        <div className="absolute inset-0 bg-gradient-to-r from-orange to-yellow-400 rounded-full blur-xl opacity-50 group-hover:opacity-75 transition-opacity duration-300"></div>
                                        <img
                                            src={destination.featuredImage.node.sourceUrl}
                                            alt={`${destination.title} Flag`}
                                            className="relative w-40 h-40 rounded-full border-4 border-white shadow-2xl object-cover transform group-hover:scale-105 transition-transform duration-300"
                                        />
                                    </div>
                                </div>
                            )}
                        </div>

                        {/* Center: Text */}
                        <div className="md:w-2/4 text-center">
                            <h1 className="text-5xl md:text-6xl lg:text-7xl font-extrabold text-white mb-6 drop-shadow-2xl animate-slide-up">
                                <span className="bg-gradient-to-r from-white via-gray-100 to-orange/90 bg-clip-text text-transparent">
                                    Shipping to {destination.title}
                                </span>
                            </h1>
                            <p className="text-xl md:text-2xl text-gray-200 max-w-3xl mx-auto leading-relaxed animate-slide-up delay-200">
                                Reliable, fast, and affordable cargo services from the UK to {destination.title}.
                            </p>

                            {/* Trust Badges */}
                            <div className="flex flex-wrap justify-center gap-4 mt-8 animate-slide-up delay-300">
                                <div className="flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-full border border-white/20">
                                    <svg className="w-4 h-4 text-orange" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                                    </svg>
                                    <span className="text-white text-sm font-semibold">Trusted</span>
                                </div>
                                <div className="flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-full border border-white/20">
                                    <svg className="w-4 h-4 text-orange" fill="currentColor" viewBox="0 0 20 20">
                                        <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clipRule="evenodd" />
                                    </svg>
                                    <span className="text-white text-sm font-semibold">Fast</span>
                                </div>
                            </div>
                        </div>

                        {/* Right: Map */}
                        <div className="md:w-1/4 flex justify-center md:justify-end">
                            <div className="animate-fade-in delay-200">
                                <div className="relative group">
                                    <div className="absolute inset-0 bg-gradient-to-l from-orange to-yellow-400 rounded-full blur-xl opacity-50 group-hover:opacity-75 transition-opacity duration-300"></div>
                                    <img
                                        src="http://directcargo.local/wp-content/uploads/destination/Angola map.jpeg"
                                        alt={`${destination.title} Map`}
                                        className="relative w-40 h-40 rounded-full border-4 border-white shadow-2xl object-cover transform group-hover:scale-105 transition-transform duration-300"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            {/* Content Section */}
            <section className="py-20 -mt-16 relative z-20">
                <div className="container mx-auto px-4">
                    <div className="flex flex-col lg:flex-row gap-8">
                        {/* Main Content (Left) */}
                        <div className="lg:w-2/3">
                            <div className="bg-white p-8 md:p-12 rounded-3xl shadow-2xl border border-gray-100 hover:shadow-orange/10 transition-shadow duration-500">
                                <div className="prose prose-lg max-w-none text-gray-700 prose-headings:text-navy prose-headings:font-bold prose-a:text-orange prose-a:no-underline hover:prose-a:underline prose-strong:text-navy">
                                    <h3>Freight services UK to Angola</h3>
                                    <p>
                                        Shipping to Angola has never been easier, we provide competitive rates for door to port and door to door cargo
                                        service to Luanda. If you are international student, relocating to Angola or do business in Angola we are here to
                                        take care of all your export needs from UK to Angola.
                                    </p>

                                    <div className="my-8 overflow-x-auto rounded-xl shadow-lg border border-gray-100">
                                        <table className="w-full min-w-[600px] text-left border-collapse">
                                            <thead>
                                                <tr className="bg-navy text-white">
                                                    <th colSpan={7} className="p-4 text-center text-lg uppercase tracking-wider">Airport to Airport</th>
                                                </tr>
                                                <tr className="bg-gray-50 text-navy border-b border-gray-200">
                                                    <th className="p-3 font-bold">Country</th>
                                                    <th className="p-3 font-bold">City</th>
                                                    <th className="p-3 font-bold">Airport Code</th>
                                                    <th className="p-3 font-bold">+100 kg</th>
                                                    <th className="p-3 font-bold">+500 kg</th>
                                                    <th className="p-3 font-bold">+1000 kg</th>
                                                    <th className="p-3 font-bold">Handling & Documentation</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr className="border-b border-gray-100 hover:bg-orange/5 transition-colors">
                                                    <td className="p-3">Angola</td>
                                                    <td className="p-3">Luanda</td>
                                                    <td className="p-3 font-mono text-orange font-bold">LAD</td>
                                                    <td className="p-3 font-bold">£6.50/kg</td>
                                                    <td className="p-3 font-bold">£5.90/kg</td>
                                                    <td className="p-3 font-bold">£5.50/kg</td>
                                                    <td className="p-3">£50 per shipment</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <ul className="list-none space-y-2 mb-8">
                                        <li className="flex items-start gap-2">
                                            <span className="text-orange mt-1">●</span>
                                            <span>Up-to Luanda Airport only</span>
                                        </li>
                                        <li className="flex items-start gap-2">
                                            <span className="text-orange mt-1">●</span>
                                            <span>Minimum weight charged is 100 kg</span>
                                        </li>
                                        <li className="flex items-start gap-2">
                                            <span className="text-orange mt-1">●</span>
                                            <span>Transit time 3-5 days <strong>Variable</strong></span>
                                        </li>
                                        <li className="flex items-start gap-2">
                                            <span className="text-orange mt-1">●</span>
                                            <span>Destination charges may apply, such as taxes, airport charges etc...</span>
                                        </li>
                                        <li className="flex items-start gap-2">
                                            <span className="text-orange mt-1">●</span>
                                            <span>This is the quickest and cheapest way to ship to Angola by air</span>
                                        </li>
                                        <li className="flex items-start gap-2">
                                            <span className="text-orange mt-1">●</span>
                                            <span>We can arrange shipment collections from any UK address, please contact Us</span>
                                        </li>
                                    </ul>

                                    <div className="bg-gray-50 p-6 rounded-2xl border border-gray-200 flex flex-col md:flex-row items-center gap-6 mb-8">
                                        {/* Container Image */}
                                        <div className="w-full md:w-1/3">
                                            <img
                                                src="http://directcargo.local/wp-content/uploads/destination/container-load.jpg"
                                                alt="Full Container Load"
                                                className="w-full h-32 object-cover rounded-xl shadow-lg"
                                            />
                                        </div>
                                        <div className="w-full md:w-2/3">
                                            <p className="font-bold text-lg text-navy mb-2">
                                                Full container load to Port of Luanda, send us your requirements and we will revert with quote.
                                            </p>
                                            <div className="space-y-1 text-gray-600">
                                                <p className="flex items-center gap-2">
                                                    <span className="font-semibold text-orange">WhatsApp:</span>
                                                    <a href="https://wa.me/447375964786" className="hover:text-navy transition">+447375964786</a>
                                                </p>
                                                <p className="flex items-center gap-2">
                                                    <span className="font-semibold text-orange">Email:</span>
                                                    <a href="mailto:info@directcargoexpress.com" className="hover:text-navy transition">info@directcargoexpress.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {/* Additional Info Cards */}
                            <div className="grid md:grid-cols-3 gap-6 mt-8">
                                <div className="bg-gradient-to-br from-orange to-orange/80 p-6 rounded-2xl text-white shadow-lg hover:shadow-xl transition-shadow duration-300">
                                    <div className="text-3xl font-bold mb-2">24/7</div>
                                    <div className="text-orange-100">Customer Support</div>
                                </div>
                                <div className="bg-gradient-to-br from-navy to-[#003366] p-6 rounded-2xl text-white shadow-lg hover:shadow-xl transition-shadow duration-300">
                                    <div className="text-3xl font-bold mb-2">100%</div>
                                    <div className="text-blue-100">Tracking Available</div>
                                </div>
                                <div className="bg-gradient-to-br from-gray-800 to-gray-700 p-6 rounded-2xl text-white shadow-lg hover:shadow-xl transition-shadow duration-300">
                                    <div className="text-3xl font-bold mb-2">£0</div>
                                    <div className="text-gray-200">Hidden Fees</div>
                                </div>
                            </div>
                        </div>

                        {/* Sidebar Form (Right) */}
                        <div className="lg:w-1/3">
                            <div className="sticky top-24">
                                <QuoteForm />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            {/* About Destination Section */}
            <section className="py-20 relative overflow-hidden">
                <div className="absolute inset-0">
                    <img
                        src="http://directcargo.local/wp-content/uploads/destination/angola_destination.webp"
                        alt="Luanda Skyline"
                        className="w-full h-full object-cover"
                    />
                    <div className="absolute inset-0 bg-navy/80 backdrop-blur-[2px]"></div>
                </div>

                <div className="container mx-auto px-4 relative z-10">
                    <div className="max-w-4xl mx-auto">
                        <div className="bg-white/10 backdrop-blur-md border border-white/20 p-8 md:p-12 rounded-3xl shadow-2xl text-center transform hover:scale-[1.02] transition-transform duration-500">
                            <h2 className="text-3xl md:text-4xl font-bold text-white mb-6">About Angola</h2>
                            <p className="text-lg md:text-xl text-gray-100 leading-relaxed font-light">
                                Angola is a Southern African nation whose varied terrain encompasses tropical Atlantic beaches, a labyrinthine
                                system of rivers and Sub-Saharan desert that extends across the border into Namibia. The country's colonial
                                history is reflected in its Portuguese-influenced cuisine and its landmarks. The capital city is Luanda and the
                                population of Angola is 34.5 million.
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <Footer />
        </main>
    );
}
