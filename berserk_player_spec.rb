require_relative 'berserk_player'

describe BerserkPlayer do

	before do
		$stdout = StringIO.new
		@initial_health = 50
		@player = BerserkPlayer.new("sean", @initial_health)
	end

	it "does not go berserk when increased health up to 5 times" do
		1.upto(5) {@player.increase_health}

		@player.berserk?.should be_false
	end

	it "goes berserk when incraesed health more than 5 times" do
		1.upto(6) {@player.increase_health}
		1.upto(2) {@player.decrease_health}

		@player.health.should == @initial_health + (10 * 8)
	end
end