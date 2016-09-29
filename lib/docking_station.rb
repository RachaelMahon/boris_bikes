class DockingStation

  DEFAULT_CAPACITY = 20

attr_reader :bikes


  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

private



  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end


  def empty?
    @bikes.count == 0
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
