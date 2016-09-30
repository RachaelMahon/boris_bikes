require 'docking_station'

describe DockingStation do

  it "creating an instance of the docking station class" do
    expect(subject.class).to eq DockingStation
  end

  it "release bike method works on DockingStation" do
    expect(subject).to respond_to :release_bike
  end

  it "working? method works on bike" do
    bike = Bike.new
    expect(bike).to respond_to :working
  end

  it "release_bike raises an error if there are no bikes" do
    expect{subject.release_bike}.to raise_error "No bikes"
  end

  it "has a capacity of 20 bikes" do
    20.times do
      subject.dock(Bike.new)
    end
    expect{subject.dock(Bike.new)}.to raise_error "Docking station full"
  end

  it "capacity is equal to 20 if no argument is given" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "capacity is equal to argument given" do
    docking_station_capacity = DockingStation.new(5)
    expect(docking_station_capacity.capacity).to eq 5
  end

  it "report of working status of the bike when working" do
    bike_working = Bike.new
    expect(subject.dock(bike_working)).to eq "Working bike"
  end

  it "report of working status of the bike when broken" do
    bike_broken = Bike.new(false)
    expect(subject.dock(bike_broken)).to eq "Broken bike"
  end

end
