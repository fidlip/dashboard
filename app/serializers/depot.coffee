`import DS from 'ember-data'`

DepotSerializer = DS.RESTSerializer.extend
  normalizeHash:
    depot: (hash)->
      console.info("depot----->", hash)
      hash.branchId = hash.id
      return hash


`export default DepotSerializer`
