`import DS from 'ember-data'`

#ApplicationAdapter = DS.RESTAdapter.extend
#  host: "http://private-1ea4c-calendar8.apiary-mock.com"
#  namespace: "calendar8/api/v1"

ApplicationAdapter = DS.FixtureAdapter

`export default ApplicationAdapter`
