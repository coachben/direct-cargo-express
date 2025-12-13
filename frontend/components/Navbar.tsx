import React from 'react';
import client from "../lib/apollo-client";
import { gql } from "@apollo/client";
import NavbarMenu from './NavbarMenu';

const GET_NAVBAR_DATA = gql`
  query GetNavbarData {
    destinations(first: 100) {
      nodes {
        title
        slug
        destinationFields {
          destinationRegion
        }
      }
    }
  }
`;

const Navbar = async ({ logoUrl }: { logoUrl?: string }) => {
    // Fetch destinations for the menu
    const { data } = await client.query<any>({
        query: GET_NAVBAR_DATA,
        fetchPolicy: "no-cache" // Ensure we get fresh data
    });

    const destinations = data?.destinations?.nodes?.map((node: any) => ({
        title: node.title,
        slug: node.slug,
        region: Array.isArray(node.destinationFields?.destinationRegion)
            ? node.destinationFields?.destinationRegion[0]
            : node.destinationFields?.destinationRegion || "Africa",
    })) || [];

    return <NavbarMenu logoUrl={logoUrl} destinations={destinations} />;
};

export default Navbar;
