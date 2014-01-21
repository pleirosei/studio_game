require 'pleiro_game/game'
require 'pleiro_game/die'

module PleiroGame

	describe Game do

		before do
			$stdout = StringIO.new
			@game = Game.new("basketball")

			@initial_health = 100
			@player = Player.new("sean", @initial_health)

			@game.add_player(@player)
		end

		it "increaes the player's health" do
			Die.any_instance.stub(:roll).and_return(5)

			@game.play(2)

			@player.health.should == @initial_health + (10 * 2)
		end

		it "skips the player's health" do
			Die.any_instance.stub(:roll).and_return(3)

			@game.play(2)

			@player.health.should == @initial_health
		end

		it "decreases the player's health" do
			Die.any_instance.stub(:roll).and_return(1)

			@game.play(2)

			@player.health.should == @initial_health - (5 * 2)
		end

		it "assigns a treasure for poitns during a player's turn" do
			game = Game.new("scavenger")
			player = Player.new("sean")

			game.add_player(player)

			game.play(1)

			player.points.should_not be_zero
		end

		it "computes total points as the sum of all player points" do
			game = Game.new("scavenger")

			player1 = Player.new("sean")
			player2 = Player.new("stephon")

			game.add_player(player1)
			game.add_player(player2)

			player1.found_treasure(Treasure.new(:hammer, 50))
			player1.found_treasure(Treasure.new(:hammer, 50))
			player2.found_treasure(Treasure.new(:crowbar, 400))

			game.total_points.should == 500
		end
	end 

end



