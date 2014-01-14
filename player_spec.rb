require_relative 'player'
require_relative 'treasure_trove'

describe Player do
	before do
		$stdout = StringIO.new
		@initial_health = 150
		@player = Player.new("sean", @initial_health)
	end
	
	it "has a capitalized name" do
			@player.name.should == "Sean"
	end

	it "has an initial health" do
		
		@player.health.should == @initial_health
	end

	it "has a string representation" do  
  	@player.found_treasure(Treasure.new(:hammer, 50))
	  @player.found_treasure(Treasure.new(:hammer, 50))

  	@player.to_s.should == "I'm Sean with health = 150, points = 100, and score = 250."
	end

	it "computes a score as the sum of its health and points" do
  	@player.found_treasure(Treasure.new(:hammer, 50))
  	@player.found_treasure(Treasure.new(:hammer, 50))
  
  	@player.score.should == 250
	end

	it "increases health by 10 when health is increased" do
		@player.increase_health

		@player.health.should == @initial_health + 10
	end

	it "decreases health by 5 when health is decreased" do
		@player.decrease_health

		@player.health.should == @initial_health - 5
	end

	context "this player is strong" do
		before do
			@player = Player.new("sean", 150)
		end

		it "has to be a strong player" do

			@player.should be_strong
		end
	end

	it "computes points as the sum of all treasure points" do
  @player.points.should == 0

  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 50

  @player.found_treasure(Treasure.new(:crowbar, 400))
  
  @player.points.should == 450
  
  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 500
	end

	it "yields each found treasure and its total poitns" do
		@player.found_treasure(Treasure.new(:skillet, 100))
		@player.found_treasure(Treasure.new(:skillet, 100))
		@player.found_treasure(Treasure.new(:hammer, 50))
		@player.found_treasure(Treasure.new(:bottle, 5))
		@player.found_treasure(Treasure.new(:bottle, 5))
		@player.found_treasure(Treasure.new(:bottle, 5))
		@player.found_treasure(Treasure.new(:bottle, 5))
		@player.found_treasure(Treasure.new(:bottle,5))

		yielded = []
		@player.each_found_treasure do |treasure|
			yielded << treasure
		end

		yielded.should == [
			Treasure.new(:skillet, 200),
			Treasure.new(:hammer, 50),
			Treasure.new(:bottle, 25)
		]
	end

	it "can be created from a CSV string" do
		player = Player.from_csv("sean,150")

		player.name.should == "Sean"
		player.health.should == 150
	end

	context "this player is wimpy" do
		before do
			@player = Player.new("sean", 99)
		end

		it "has to be a wimpy player" do
			@player.should_not be_strong
		end
	end

	context "in a collection of players" do
		before do
			@player1 = Player.new("sean", 100)
			@player2 = Player.new("stephon", 200)
			@player3 = Player.new("cory", 300)

			@players = [@player1, @player2, @player3]
		end

		it "is sorted by decreasing score" do
			@players.sort.should == [@player3, @player2, @player1]
		end
	end
end