###
  Adapter which do not perform any ajax requests
###
`import DS from 'ember-data'`


Adapter = DS.Adapter.extend
  findAll: (store, type)->
    typeKey = type.typeKey
    console.info("type=", typeKey)
    return new Ember.RSVP.Promise((resolve, reject)->
      Ember.run.schedule 'actions', null, ()->
        value = {}
        value[typeKey] = []
        resolve(value);

    , 'BlindAdapter'
    )


`export default Adapter`
