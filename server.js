
process.env.NODE_ENV = 'development';

const strapi = require('@strapi/strapi');
strapi.createStrapi(/* {...} */).start();
