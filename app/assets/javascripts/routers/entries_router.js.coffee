class CoffeescriptFun.Routers.Entries extends Backbone.Router

  routes: 
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @el = $('#container')
    @collection = new CoffeescriptFun.Collections.Entries

  index: ->
    indexView = new CoffeescriptFun.Views.EntriesIndex
      collection: @collection
    @el.html(indexView.render().el)

  show: (id) ->
    console.log "Entry #{id}"