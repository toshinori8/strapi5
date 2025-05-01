// const strapi = require('@strapi/strapi');
// strapi.createStrapi(/* {...} */).start();

const strapi = require('@strapi/strapi');
const app = strapi.createStrapi({ distDir: './dist' });
app.start();