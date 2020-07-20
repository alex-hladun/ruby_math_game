require './Engine'
require './Player'



alex = Player.new("Alex")
rufus = Player.new("Rufus")


game = Engine.new(alex, rufus)
game.start_game