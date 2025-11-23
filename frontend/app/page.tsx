import client from "@/lib/apollo-client";
import { gql } from "@apollo/client";
import Navbar from "@/components/Navbar";
import Hero from "@/components/Hero";
import Services from "@/components/Services";
import About from "@/components/About";
import Destinations from "@/components/Destinations";
import Footer from "@/components/Footer";

// Add FontAwesome for icons
import "@fortawesome/fontawesome-free/css/all.min.css";

interface HomepageData {
  page: {
    homepageFields: {
      heroTitle: string;
      heroSubtitle: string;
      heroBgImage: {
        node: {
          sourceUrl: string;
        };
      };
      heroCtaText: string;
      heroCtaLink: string;
      aboutTitle: string;
      aboutContent: string;
      aboutImage: {
        node: {
          sourceUrl: string;
        };
      };
      aboutPhone: string;
    };
  };
  services: {
    nodes: {
      title: string;
      serviceFields: {
        serviceIcon: string;
        serviceShortDesc: string;
      };
      featuredImage?: {
        node: {
          sourceUrl: string;
        };
      };
    }[];
  };
  destinations: {
    nodes: {
      title: string;
      slug: string;
      featuredImage: {
        node: {
          sourceUrl: string;
        };
      };
    }[];
  };
}

export default async function Home() {
  const { data } = await client.query<HomepageData>({
    query: gql`
      query GetHomepageData {
        page(id: "28", idType: DATABASE_ID) {
          homepageFields {
            heroTitle
            heroSubtitle
            heroBgImage {
              node {
                sourceUrl
              }
            }
            heroCtaText
            heroCtaLink
            aboutTitle
            aboutContent
            aboutImage {
              node {
                sourceUrl
              }
            }
            aboutPhone
          }
        }
        services {
          nodes {
            title
            featuredImage {
              node {
                sourceUrl
              }
            }
            serviceFields {
              serviceIcon
              serviceShortDesc
            }
          }
        }
        destinations {
          nodes {
            title
            featuredImage {
              node {
                sourceUrl
              }
            }
          }
        }
      }
    `,
    fetchPolicy: "no-cache", // Ensure fresh data for testing
  });

  const homepageFields = data?.page?.homepageFields || {
    heroTitle: "Welcome",
    heroSubtitle: "Loading...",
    heroBgImage: { node: { sourceUrl: "" } },
    heroCtaText: "",
    heroCtaLink: "#",
    aboutTitle: "",
    aboutContent: "",
    aboutImage: { node: { sourceUrl: "" } },
    aboutPhone: "",
  };

  const services = data?.services?.nodes?.map(node => ({
    title: node.title,
    icon: node.serviceFields?.serviceIcon || "fa-box",
    description: node.serviceFields?.serviceShortDesc || "",
    imageUrl: node.featuredImage?.node?.sourceUrl,
  })) || [];

  const destinations = data?.destinations?.nodes?.map(node => ({
    title: node.title,
    slug: node.slug,
    flagUrl: node.featuredImage?.node?.sourceUrl || "",
  })) || [];

  return (
    <main className="min-h-screen flex flex-col">
      <Navbar />
      <Hero
        title={homepageFields.heroTitle}
        subtitle={homepageFields.heroSubtitle}
        bgImage={homepageFields.heroBgImage?.node?.sourceUrl || "https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80"} // Fallback image
        ctaText={homepageFields.heroCtaText}
        ctaLink={homepageFields.heroCtaLink}
      />
      <About
        title={homepageFields.aboutTitle}
        content={homepageFields.aboutContent}
        image={homepageFields.aboutImage?.node?.sourceUrl || "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80"} // Fallback image
        phone={homepageFields.aboutPhone || "+1 (555) 123-4567"}
      />
      <Services services={services} />
      <Destinations destinations={destinations} />
      <Footer />
    </main>
  );
}
