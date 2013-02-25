class CoffeescriptFun.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'
    'click #draw_winner': 'drawWinner'

  initialize: ->
    @listenTo(@collection, 'reset', @render)
    @listenTo(@collection, 'add', @appendEntry)
    @collection.fetch()

  render: ->
    $(@el).html @template(entries: @collection.models)
    @

  appendEntry: (entry) ->
    $('#entries').append("<li>#{entry.get('name')}</li>")

  createEntry: (e) ->
    e.preventDefault()
    name = $('#new_entry_name').val()
    @collection.create name: name
    $('#new_entry_name').val('')

  drawWinner: (e) ->
    e.preventDefault()
    @collection.selectWinner()
