require_relative 'clumsy_player'

describe ClumsyPlayer do
	before do
		$stdout = StringIO.new
		@player = ClumsyPlayer.new("sean", 105, 2)
	end

	it "only gets half the point value for each treasure" do
		@player.points.should == 0

		hammer = Treasure.new(:hammer, 50)
		@player.found_treasure(hammer)
		@player.found_treasure(hammer)
		@player.found_treasure(hammer)

		@player.points.should == 75

		crowbar = Treasure.new(:crowbar, 400)
		@player.found_treasure(crowbar)

		@player.points.should == 275

		yielded = []
		@player.each_found_treasure do |treasure|
			yielded << treasure
		end

		yielded.should == [Treasure.new(:hammer, 75), Treasure.new(:crowbar, 200)]
	end

	context "with a boost factor" do
		before do
			@initial_health = 100
			@boost = 5
			@player = ClumsyPlayer.new("sean", @initial_health, @boost)
		end

		it "has a boost factor" do
			@player.boost.should == 5
		end

		it "gets boost factor number of increased health when health is increased" do
			@player.increase_health

			@player.health.should == @initial_health + (10 * @boost)
		end
	end

end