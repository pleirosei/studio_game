require_relative 'game'
require_relative 'die'

describe Game do

	before do
		@game = Game.new("basketball")

		@initial_health = 100
		@player = Player.new("sean", @initial_health)

		@game.add_player(@player)
	end

	it "increaes the player's health" do
		Die.any_instance.stub(:roll).and_return(5)

		@game.play

		@player.health.should == @initial_health + 10
	end

	it "skips the player's health" do
		Die.any_instance.stub(:roll).and_return(3)

		@game.play

		@player.health.should == @initial_health
	end

	it "decreases the player's health" do
		Die.any_instance.stub(:roll).and_return(1)

		@game.play

		@player.health.should == @initial_health - 5
	end





end 




