#bike_spec


require 'bike'

describe Bike do
  it {is_expected.to respond_to :is_working?}
end


#  it "bike respond_to is_working?" do
#    bike = Bike.new
#  expect(bike.is_working?).to eq true
#end
#end
