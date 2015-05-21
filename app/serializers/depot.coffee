`import DS from 'ember-data'`

DepotSerializer = DS.RESTSerializer.extend
  normalizeHash:
    depot: (hash)->
      console.info("depot----->", hash)
      hash.branch = hash.id
      return hash


`export default DepotSerializer`
