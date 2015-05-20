`
  import DS from 'ember-data';
  import config from 'dashboard/config/environment';
`

Adapter = DS.RESTAdapter.extend
  host: config.rest.host
  namespace: config.rest.namespace


`export default Adapter`
