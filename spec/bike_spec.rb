require 'bike'

describe Bike do

    it { is_expected.to respond_to :working}

    it "creates a working bike by default" do
      bike_working = Bike.new
      expect(bike_working.working).to eq true
    end

    it "creates a broken bike when argument 'false' is given" do
      bike_broken = Bike.new(false)
      expect(bike_broken.working).to eq false
    end

    

end
