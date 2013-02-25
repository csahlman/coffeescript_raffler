class CoffeescriptFun.Collections.Entries extends Backbone.Collection
  url: '/entries'

  model: CoffeescriptFun.Models.Entry

  nonWinners: ->
    shuffledCollection = @.shuffle()
    nonWinners = _.filter shuffledCollection, (entry) =>
      !entry.get('winner')

  selectWinner: ->
    nonWinners = @nonWinners()
    console.log nonWinners
    nonWinners[0].save winner: true
    @trigger('reset')



