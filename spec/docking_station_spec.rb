require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}
  it { is_expected.to respond_to(:dock).with(1).argument}
  it { is_expected.to respond_to(:bikes)}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      #subject == DockingStation.new
      expect{subject.release_bike}.to raise_error('No bikes')
    end
  end

  describe '#dock(bike)' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect{subject.dock(Bike.new)}.to raise_error('Docking station full')
    end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'returnes docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
end



end
