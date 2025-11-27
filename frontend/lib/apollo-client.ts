import { ApolloClient, InMemoryCache, HttpLink } from "@apollo/client";

const client = new ApolloClient({
  link: new HttpLink({
    uri: process.env.NEXT_PUBLIC_WORDPRESS_API_URL || "http://directcargo.local/graphql",
  }),
  cache: new InMemoryCache(),
});

export default client;
