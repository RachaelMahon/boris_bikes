class DockingStation

  attr_reader :station
  attr_reader :bike

  def release_bike
    fail 'No bikes' unless @bike
      @bike
    end

  def dock(bike)
    @bike = bike
  end

#this is a shorthand one line syntax for writing a method below

#  def bike
#    @bike
#  end


end


class Bike

   def is_working?
     true
   end

end

# This is a git pong test.
