class DockingStation

  attr_reader :station


  def release_bike
    if bike == 0
    raise 'No bikes'
    else
      @bike
    end
  end

  def dock(bike)
    @bike = bike
  end

attr_reader :bike #this is a shorthand one line syntax for writing a method below

#  def bike
#    @bike
#  end


end


class Bike

   def is_working?
     true
   end

end
