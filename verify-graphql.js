const fetch = require('node-fetch');

async function verifySchema() {
    const query = `
    query GetHomepageData {
      page(id: "28", idType: DATABASE_ID) {
        title
        homepageFields {
          heroTitle
          heroSubtitle
          heroCtaText
        }
      }
      services {
        nodes {
          title
          serviceFields {
            serviceIcon
            serviceShortDesc
          }
        }
      }
    }
  `;

    const response = await fetch('http://directcargo.local/graphql', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ query }),
    });

    const result = await response.json();
    console.log(JSON.stringify(result, null, 2));
}

verifySchema();
