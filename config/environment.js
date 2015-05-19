/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'dashboard',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    },
    contentSecurityPolicy: {
      'default-src': "'self'",
      'script-src': "'self'",
      'font-src': "'self'",
      'connect-src': "'self' ws://192.168.148.110/dashboard/",
      'img-src': "'self'",
      'style-src': "'self'",
      'frame-src': "'self'"
    },
    atmosphere: {
      transport: 'websocket',
      fallbackTransport: 'long-polling',
      contentType: "application/json",
      shared: true,
      trackMessageLength: true,
      reconnectInterval: 5000
    }

  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
    ENV.atmosphere.url = "http://192.168.148.110/dashboard/atm/feed/";
    ENV.atmosphere.logLevel = "debug";

  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
    ENV.baseURL = "/dashboard/";
    ENV.atmosphere.url = "/dashboard/atm/feed/";
  }

  return ENV;
};
