require 'docking_station'


describe DockingStation do
    it { is_expected.to respond_to(:release_bike)}
    it { is_expected.to respond_to(:dock).with(1).argument}
    it { is_expected.to respond_to(:bike)}

   it "expect error for bike release" do
     expect { raise StandardError, 'No bikes' }.
     to raise_error('No bikes')
   end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returnes docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end


describe Bike do
    it { is_expected.to respond_to :is_working?}

end
