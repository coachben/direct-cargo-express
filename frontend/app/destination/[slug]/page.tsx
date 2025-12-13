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
      destinationFields {
        destinationFlag {
          node {
            sourceUrl
          }
        }
        destinationMap {
          node {
            sourceUrl
          }
        }
        destinationDescription
        pricingTable {
          tableTitle
          tableDescription
          row1 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row2 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row3 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row4 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row5 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row6 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row7 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row8 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row9 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
          row10 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
        }
        pricingTableSecondary {
            tableTitle
            tableDescription
            row1 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row2 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row3 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row4 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row5 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row6 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row7 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row8 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row9 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
            row10 { country city airportCode price5kg price100kg price500kg price1000kg handlingFee }
        }
        bulletPoints {
          point1
          point2
          point3
          point4
          point5
          point6
          point7
          point8
          point9
          point10
        }
        containerLoad {
          title
          description
          image {
            node {
              sourceUrl
            }
          }
          whatsapp
          email
        }
      }
    }
    generalSettings {
      title
      description
      siteLogoUrl
    }

  }
`;

interface DestinationsData {
    destinations: {
        nodes: {
            slug: string;
        }[];
    };
}

export const revalidate = 0; // Disable cache for immediate updates

export async function generateStaticParams() {
    // Fetch all destinations to generate static pages
    const { data } = await client.query<DestinationsData>({
        query: gql`
            query GetAllDestinations {
                destinations {
                    nodes {
                        slug
                    }
                }
            }
        `,
        fetchPolicy: 'no-cache' // Ensure fresh data
    });

    if (!data?.destinations?.nodes) {
        return [];
    }

    return data.destinations.nodes.map((node) => ({
        slug: node.slug,
    }));
}

interface DestinationData {
    destination: {
        title: string;
        content: string;
        featuredImage?: {
            node: {
                sourceUrl: string;
            };
        };
        destinationFields: {
            destinationFlag?: {
                node: {
                    sourceUrl: string;
                };
            };
            destinationMap?: {
                node: {
                    sourceUrl: string;
                };
            };
            destinationDescription?: string;
            pricingTable?: {
                tableTitle?: string;
                tableDescription?: string;
                [key: string]: {
                    country: string;
                    city: string;
                    airportCode: string;
                    price5kg: string;
                    price100kg: string;
                    price500kg: string;
                    price1000kg: string;
                    handlingFee: string;
                } | any; // Allow title string
            };
            pricingTableSecondary?: {
                tableTitle?: string;
                tableDescription?: string;
                [key: string]: any; // Allow dynamic rows and title
            };
            bulletPoints?: {
                [key: string]: string | null;
            };
            containerLoad?: {
                title: string;
                description: string;
                image?: {
                    node: {
                        sourceUrl: string;
                    };
                };
                whatsapp: string;
                email: string;
            };
        };
    };
    generalSettings: {
        title: string;
        description: string;
        siteLogoUrl?: string;
    };
}

export default async function DestinationPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params;

    const { data } = await client.query<DestinationData>({
        query: GET_DESTINATION,
        variables: { slug },
        fetchPolicy: 'no-cache' // Ensure fresh data
    });

    const destination = data?.destination;

    if (!destination) {
        return <div>Destination not found</div>;
    }

    // Debugging: Log the fetched data
    console.log('Fetched Destination Data:', JSON.stringify(destination, null, 2));

    // Helper to transform Pricing Table Group to Array
    const pricingTableArray = destination.destinationFields.pricingTable
        ? Object.values(destination.destinationFields.pricingTable)
            .filter((row): row is NonNullable<typeof row> => row !== null && !!row.country) // Filter out empty rows
            .map(row => ({
                country: row.country,
                city: row.city,
                airportCode: row.airportCode,
                price5kg: row.price5kg,
                price100kg: row.price100kg,
                price500kg: row.price500kg,
                price1000kg: row.price1000kg,
                handlingFee: row.handlingFee
            }))
        : [];
    const primaryTableTitle = destination.destinationFields.pricingTable?.tableTitle || 'AIRPORT TO AIRPORT';
    const primaryTableDesc = destination.destinationFields.pricingTable?.tableDescription || '';

    // Helper to transform Secondary Pricing Table Group to Array
    const pricingTableSecondaryArray = destination.destinationFields.pricingTableSecondary
        ? Object.entries(destination.destinationFields.pricingTableSecondary)
            .filter(([key, row]) => key.startsWith('row') && row !== null && !!(row as any).country) // Filter out title and empty rows
            .map(([, row]) => ({
                country: (row as any).country,
                city: (row as any).city,
                airportCode: (row as any).airportCode,
                price5kg: (row as any).price5kg,
                price100kg: (row as any).price100kg,
                price500kg: (row as any).price500kg,
                price1000kg: (row as any).price1000kg,
                handlingFee: (row as any).handlingFee
            }))
        : [];
    const secondaryTableTitle = destination.destinationFields.pricingTableSecondary?.tableTitle || 'OCEAN FREIGHT';
    const secondaryTableDesc = destination.destinationFields.pricingTableSecondary?.tableDescription || '';

    // Helper to transform Bullet Points Group to Array
    const bulletPointsArray = destination.destinationFields.bulletPoints
        ? Object.entries(destination.destinationFields.bulletPoints)
            .filter(([key, value]) => key !== '__typename' && typeof value === 'string' && value.trim() !== '')
            .map(([, point]) => ({ point: point as string }))
        : [];

    const containerLoad = destination.destinationFields.containerLoad;

    // Helper to determine if a column should be shown
    const hasData = (data: any[], key: string) => data.some(row => row[key] && row[key].trim() !== '');

    const showPrimaryAirportCode = hasData(pricingTableArray, 'airportCode');
    const showPrimary5kg = hasData(pricingTableArray, 'price5kg');
    const showPrimary100kg = hasData(pricingTableArray, 'price100kg');
    const showPrimary500kg = hasData(pricingTableArray, 'price500kg');
    const showPrimary1000kg = hasData(pricingTableArray, 'price1000kg');

    const showSecondaryAirportCode = hasData(pricingTableSecondaryArray, 'airportCode');
    const showSecondary5kg = hasData(pricingTableSecondaryArray, 'price5kg');
    const showSecondary100kg = hasData(pricingTableSecondaryArray, 'price100kg');
    const showSecondary500kg = hasData(pricingTableSecondaryArray, 'price500kg');
    const showSecondary1000kg = hasData(pricingTableSecondaryArray, 'price1000kg');

    return (
        <main className="min-h-screen bg-gradient-to-br from-gray-50 via-white to-orange/5 font-sans">
            <Navbar logoUrl={data?.generalSettings?.siteLogoUrl} />

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
                            <div className="animate-fade-in">
                                <div className="relative group">
                                    <div className="absolute inset-0 bg-gradient-to-r from-orange to-yellow-400 rounded-full blur-xl opacity-50 group-hover:opacity-75 transition-opacity duration-300"></div>
                                    <img
                                        src={destination.destinationFields.destinationFlag?.node?.sourceUrl || "/images/destination/Flag_of_Angola-1.svg"}
                                        alt={`${destination.title} Flag`}
                                        className="relative w-40 h-40 rounded-full border-4 border-white shadow-2xl object-cover transform group-hover:scale-105 transition-transform duration-300"
                                    />
                                </div>
                            </div>
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
                                        src={destination.destinationFields.destinationMap?.node?.sourceUrl || "/images/destination/Angola map.jpeg"}
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
                            <div className="bg-white rounded-3xl shadow-xl p-8 md:p-12 relative overflow-hidden text-gray-900">
                                <div className="absolute top-0 left-0 w-full h-2 bg-gradient-to-r from-blue-600 via-navy to-blue-800"></div>

                                <div className="prose prose-lg max-w-none prose-headings:text-navy prose-a:text-blue-600 hover:prose-a:text-blue-800 prose-strong:text-navy">
                                    {destination.content ? (
                                        <div dangerouslySetInnerHTML={{ __html: destination.content }} />
                                    ) : (
                                        <p>Information about shipping to {destination.title} is coming soon. Please contact us for a quote.</p>
                                    )}
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



                            {/* Pricing Table */}
                            {pricingTableArray.length > 0 && (
                                <div className="mt-12">
                                    <div className="bg-navy text-white text-center py-4 rounded-t-lg font-bold text-xl tracking-wide uppercase">
                                        {primaryTableTitle}
                                    </div>
                                    <div className="overflow-x-auto shadow-lg rounded-b-lg border border-orange/20">
                                        <table className="w-full text-left border-collapse">
                                            <thead>
                                                <tr className="bg-gray-50 text-navy font-bold text-xs md:text-sm uppercase tracking-wider">
                                                    {/* <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">Country</th> */}
                                                    <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">City</th>
                                                    {showPrimaryAirportCode && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">Airport Code</th>}
                                                    {showPrimary5kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+5 kg</th>}
                                                    {showPrimary100kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+100 kg</th>}
                                                    {showPrimary500kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+500 kg</th>}
                                                    {showPrimary1000kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+1000 kg</th>}
                                                    <th className="p-2 md:p-4 border-b border-orange/30">Documentation</th>
                                                </tr>
                                            </thead>
                                            <tbody className="bg-white divide-y divide-orange/10 text-xs md:text-sm">
                                                {pricingTableArray.map((row, index) => (
                                                    <tr key={index} className="hover:bg-orange/5 transition-colors">
                                                        {/* <td className="p-2 md:p-4 font-normal text-gray-900 border-r border-orange/10 last:border-r-0">{row.country}</td> */}
                                                        <td className="p-2 md:p-4 text-gray-700 border-r border-orange/10 last:border-r-0">{row.city}</td>
                                                        {showPrimaryAirportCode && <td className="p-2 md:p-4 text-orange font-medium border-r border-orange/10 last:border-r-0">{row.airportCode}</td>}
                                                        {showPrimary5kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price5kg}</td>}
                                                        {showPrimary100kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price100kg}</td>}
                                                        {showPrimary500kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price500kg}</td>}
                                                        {showPrimary1000kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price1000kg}</td>}
                                                        <td className="p-2 md:p-4 text-gray-600">{row.handlingFee}</td>
                                                    </tr>
                                                ))}
                                            </tbody>
                                        </table>
                                    </div>
                                    {/* Table Description (Bullet Points) */}
                                    {primaryTableDesc && (
                                        <div
                                            className="bg-white p-6 rounded-b-lg border-x border-b border-orange/20 shadow-lg text-gray-700 
                                            [&>ul]:space-y-3 [&>ul>li]:relative [&>ul>li]:pl-5 
                                            [&>ul>li]:before:content-['•'] [&>ul>li]:before:absolute [&>ul>li]:before:left-0 [&>ul>li]:before:text-orange [&>ul>li]:before:font-bold"
                                            dangerouslySetInnerHTML={{ __html: primaryTableDesc }}
                                        />
                                    )}
                                </div>
                            )}

                            {/* Secondary Pricing Table */}
                            {pricingTableSecondaryArray.length > 0 && (
                                <div className="mt-12">
                                    <div className="bg-navy text-white text-center py-4 rounded-t-lg font-bold text-xl tracking-wide uppercase">
                                        {secondaryTableTitle}
                                    </div>
                                    <div className="overflow-x-auto shadow-lg rounded-t-none border-x border-t border-orange/20 bg-white">
                                        <table className="w-full text-left border-collapse">
                                            <thead>
                                                <tr className="bg-gray-50 text-navy font-bold text-xs md:text-sm uppercase tracking-wider">
                                                    <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">City</th>
                                                    {showSecondaryAirportCode && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">Airport/Port</th>}
                                                    {showSecondary5kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+5 kg</th>}
                                                    {showSecondary100kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+100 kg</th>}
                                                    {showSecondary500kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+500 kg</th>}
                                                    {showSecondary1000kg && <th className="p-2 md:p-4 border-b border-orange/30 border-r last:border-r-0">+1000 kg</th>}
                                                    <th className="p-2 md:p-4 border-b border-orange/30">Documentation</th>
                                                </tr>
                                            </thead>
                                            <tbody className="bg-white divide-y divide-orange/10 text-xs md:text-sm">
                                                {pricingTableSecondaryArray.map((row, index) => (
                                                    <tr key={index} className="hover:bg-orange/5 transition-colors">
                                                        <td className="p-2 md:p-4 text-gray-700 border-r border-orange/10 last:border-r-0">{row.city}</td>
                                                        {showSecondaryAirportCode && <td className="p-2 md:p-4 text-orange font-medium border-r border-orange/10 last:border-r-0">{row.airportCode}</td>}
                                                        {showSecondary5kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price5kg}</td>}
                                                        {showSecondary100kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price100kg}</td>}
                                                        {showSecondary500kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price500kg}</td>}
                                                        {showSecondary1000kg && <td className="p-2 md:p-4 font-normal text-navy border-r border-orange/10 last:border-r-0">{row.price1000kg}</td>}
                                                        <td className="p-2 md:p-4 text-gray-600">{row.handlingFee}</td>
                                                    </tr>
                                                ))}
                                            </tbody>
                                        </table>
                                    </div>
                                    {/* Secondary Table Description */}
                                    {secondaryTableDesc && (
                                        <div
                                            className="bg-white p-6 rounded-b-lg border-x border-b border-orange/20 shadow-lg text-gray-700 
                                            [&>ul]:space-y-3 [&>ul>li]:relative [&>ul>li]:pl-5 
                                            [&>ul>li]:before:content-['•'] [&>ul>li]:before:absolute [&>ul>li]:before:left-0 [&>ul>li]:before:text-orange [&>ul>li]:before:font-bold"
                                            dangerouslySetInnerHTML={{ __html: secondaryTableDesc }}
                                        />
                                    )}
                                </div>
                            )}

                            {/* Bullet Points */}
                            {bulletPointsArray.length > 0 && (
                                <div className="mt-8 space-y-3">
                                    {bulletPointsArray.map((item, index) => (
                                        <div key={index} className="flex items-start gap-3">
                                            <div className="mt-1.5 w-2 h-2 rounded-full bg-orange flex-shrink-0"></div>
                                            <p className="text-gray-700 text-lg leading-relaxed">{item.point}</p>
                                        </div>
                                    ))}
                                </div>
                            )}

                            {/* Container Load Section */}
                            {destination.destinationFields.containerLoad && (
                                <div className="mt-12 bg-white rounded-3xl p-8 border border-gray-100 shadow-2xl transform hover:-translate-y-1 transition-transform duration-300">
                                    <div className="flex flex-col md:flex-row gap-8 items-center">
                                        {destination.destinationFields.containerLoad.image?.node?.sourceUrl && (
                                            <div className="md:w-5/12">
                                                <div className="relative rounded-xl overflow-hidden shadow-lg group">
                                                    <div className="absolute inset-0 bg-navy/10 group-hover:bg-transparent transition-colors duration-300"></div>
                                                    <img
                                                        src={destination.destinationFields.containerLoad.image.node.sourceUrl}
                                                        alt="Container Load"
                                                        className="w-full h-auto object-cover transform group-hover:scale-105 transition-transform duration-500"
                                                    />
                                                </div>
                                            </div>
                                        )}
                                        <div className="md:w-7/12">
                                            <h3 className="text-xl md:text-2xl font-extrabold text-navy mb-4 leading-tight">
                                                {destination.destinationFields.containerLoad.title}
                                            </h3>
                                            {destination.destinationFields.containerLoad.description && (
                                                <p className="text-gray-600 mb-6 leading-relaxed">
                                                    {destination.destinationFields.containerLoad.description}
                                                </p>
                                            )}
                                            <div className="space-y-3">
                                                {destination.destinationFields.containerLoad.whatsapp && (
                                                    <div className="flex items-center gap-3 group">
                                                        <div className="w-10 h-10 rounded-full bg-orange/10 flex items-center justify-center group-hover:bg-orange/20 transition-colors">
                                                            <svg className="w-5 h-5 text-orange" fill="currentColor" viewBox="0 0 24 24"><path d="M.057 24l1.687-6.163c-1.041-1.804-1.588-3.849-1.587-5.946.003-6.556 5.338-11.891 11.893-11.891 3.181.001 6.167 1.24 8.413 3.488 2.245 2.248 3.481 5.236 3.48 8.414-.003 6.557-5.338 11.892-11.893 11.892-1.99-.001-3.951-.5-5.688-1.448l-6.305 1.654zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884-.001 2.225.651 3.891 1.746 5.634l-.999 3.648 3.742-.981zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.768.967-.941 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.521.151-.172.2-.296.3-.495.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372s-1.04 1.016-1.04 2.479 1.065 2.876 1.213 3.074c.149.198 2.095 3.2 5.076 4.487.709.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z" /></svg>
                                                        </div>
                                                        <div>
                                                            {/* <span className="block text-xs font-bold text-orange uppercase tracking-wider">WhatsApp</span> */}
                                                            <a
                                                                href={`https://wa.me/${destination.destinationFields.containerLoad.whatsapp.replace(/[^0-9]/g, '')}`}
                                                                target="_blank"
                                                                rel="noopener noreferrer"
                                                                className="text-lg font-bold text-navy hover:text-orange transition-colors"
                                                            >
                                                                {destination.destinationFields.containerLoad.whatsapp}
                                                            </a>
                                                        </div>
                                                    </div>
                                                )}
                                                {destination.destinationFields.containerLoad.email && (
                                                    <div className="flex items-center gap-3 group">
                                                        <div className="w-10 h-10 rounded-full bg-blue-50 flex items-center justify-center group-hover:bg-blue-100 transition-colors">
                                                            <svg className="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
                                                        </div>
                                                        <div>
                                                            {/* <span className="block text-xs font-bold text-blue-600 uppercase tracking-wider">Email</span> */}
                                                            <a href={`mailto:${destination.destinationFields.containerLoad.email}`} className="text-lg font-bold text-navy hover:text-blue-600 transition-colors">
                                                                {destination.destinationFields.containerLoad.email}
                                                            </a>
                                                        </div>
                                                    </div>
                                                )}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            )}
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
                        src="/images/destination/angola_destination.webp"
                        alt="Luanda Skyline"
                        className="w-full h-full object-cover"
                    />
                    <div className="absolute inset-0 bg-navy/80 backdrop-blur-[2px]"></div>
                </div>

                <div className="container mx-auto px-4 relative z-10">
                    <div className="max-w-4xl mx-auto">
                        <div className="bg-white/10 backdrop-blur-md border border-white/20 p-8 md:p-12 rounded-3xl shadow-2xl text-center transform hover:scale-[1.02] transition-transform duration-500">
                            <h2 className="text-3xl md:text-4xl font-bold text-white mb-6">About {destination.title}</h2>
                            <div
                                className="text-lg md:text-xl text-gray-100 leading-relaxed font-light [&>p]:mb-4 last:[&>p]:mb-0"
                                dangerouslySetInnerHTML={{
                                    __html: destination.destinationFields.destinationDescription || `Information about ${destination.title} is coming soon.`
                                }}
                            />
                        </div>
                    </div>
                </div>
            </section>

            <Footer logoUrl={data?.generalSettings?.siteLogoUrl} />
        </main>
    );
}
