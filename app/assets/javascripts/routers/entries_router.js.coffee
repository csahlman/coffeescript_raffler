class CoffeescriptFun.Routers.Entries extends Backbone.Router

  routes: 
    '': 'index'
    'show/:id': 'show'

  initialize: ->
    console.log "Initialized Router"

  index: ->

  show: (id) ->
    alert "Entry #{id}"