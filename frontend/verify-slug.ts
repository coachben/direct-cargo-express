import { gql } from '@apollo/client';
import client from './lib/apollo-client';

const GET_DESTINATION_CONTENT = gql`
  query GetDestinationContent {
    destination(id: "angola", idType: SLUG) {
      id
      title
      content
    }
  }
`;

interface VerifyData {
  destination: {
    id: string;
    title: string;
    content: string;
  };
}

async function verify() {
  try {
    console.log("Querying Angola content...");
    const { data } = await client.query<VerifyData>({
      query: GET_DESTINATION_CONTENT,
    });
    console.log("Content found:", data?.destination?.content);
  } catch (error) {
    console.error("Error fetching data:", error);
  }
}

verify();
