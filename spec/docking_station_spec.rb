require 'docking_station'


describe DockingStation do
    it { is_expected.to respond_to :release_bike}
    it { is_expected.to respond_to :dock_bike}
    it { is_expected.to respond_to :has_bike?}

describe Bike do
    it { is_expected.to respond_to :is_working?}

end
end
