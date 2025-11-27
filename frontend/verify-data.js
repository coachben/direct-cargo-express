const { ApolloClient, InMemoryCache, HttpLink, gql } = require('@apollo/client');
const fetch = require('cross-fetch');

const client = new ApolloClient({
  link: new HttpLink({ uri: 'http://directcargo.local/graphql', fetch }),
  cache: new InMemoryCache(),
});

const GET_DESTINATION = gql`
  query GetDestination($slug: ID!) {
    destination(id: $slug, idType: SLUG) {
      title
      content
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
          country
          city
          airportCode
          price100kg
          price500kg
          price1000kg
          handlingFee
        }
        bulletPoints {
          point
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
  }
`;

client.query({
  query: GET_DESTINATION,
  variables: { slug: 'angola' },
})
  .then(result => console.log(JSON.stringify(result.data, null, 2)))
  .catch(error => console.error(error));
