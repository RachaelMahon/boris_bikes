class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes' if @bikes.count == 0
    @bikes
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= 20
    @bikes << bike
  end

end


class Bike

   def is_working?
     true
   end

end

# This is a git pong test.
#test part
#added day 3 branch to fmlharrison
