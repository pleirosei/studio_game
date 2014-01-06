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
		
		@player.to_s.should == "I am Sean with a health of 150 and a score of 154!  He is a beast!"
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


	context "with a health of atleast 150" do
		before do
			@player = Player.new("sean", 150)
		end

		it "he is good" do
			@player.should be_good
		end

		it "has a good health status" do
			@player.status.should == "He is a beast!"
		end
	end

	context "with a health of less than 150" do
		before do
			@player = Player.new("sean", 149)
		end

		it "he is not good" do
			@player.should_not be_good
		end
		it "he is a bad health status" do
			@player.status.should == "He should get good!"
		end
	end

end