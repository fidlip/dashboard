`import DS from 'ember-data'`

ApplicationSerializer = DS.RESTSerializer.extend

  extractArray: (store, type, payload)->

    for wrapper of payload
      console.info("array---->", wrapper)
      arr = payload[wrapper].array
      if arr
        payload[wrapper] = arr

    console.info("payload----->", payload)
    return @_super(store, type, payload)

`export default ApplicationSerializer`
