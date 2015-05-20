`import DS from 'ember-data'`


command_id = 0


CommandSerializer = DS.RESTSerializer.extend
  normalizeHash:
    command: (hash)->
      console.info("command----->", hash)
      hash.id = command_id++
      return hash


`export default CommandSerializer`
