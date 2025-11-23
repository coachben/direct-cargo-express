
import { gql } from '@apollo/client';
import client from './lib/apollo-client';

const GET_ALL_DESTINATIONS = gql`
  query GetAllDestinations {
    destinations {
      nodes {
        id
        slug
        title
      }
    }
  }
`;

async function verify() {
  try {
    console.log("Querying all destinations...");
    const { data } = await client.query({
      query: GET_ALL_DESTINATIONS,
    });
    console.log("Destinations found:", JSON.stringify(data, null, 2));
  } catch (error) {
    console.error("Error fetching data:", error);
  }
}

verify();
