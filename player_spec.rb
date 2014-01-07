require_relative 'player'

describe Player do
	before do
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
		
		@player.to_s.should == "I am Sean with a health of 150 and a score of 154!"
	end

	it "computes a score as the sum of its health and length of name" do

		@player.score.should == 154
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

	context "this player is wimpy" do
		before do
			@player = Player.new("sean", 99)
		end

		it "has to be a wimpy player" do
			@player.should_not be_strong
		end
	end
end