module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET'),
  },
  apiToken: {
    salt: env('API_TOKEN_SALT'),
  },
  url: 'http://' + env('PROJECT_URL', '127.0.0.1') + '/strapi/admin/',
});
