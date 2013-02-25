window.CoffeescriptFun =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    @appRouter = new CoffeescriptFun.Routers.Entries
    Backbone.history.start()

$(document).ready ->
  CoffeescriptFun.initialize()
