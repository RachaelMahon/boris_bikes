class DockingStation

  attr_reader :station



  def release_bike
    Bike.new
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

=begin

class Customer
  def return
    if DockingStation.empty?
      nil
    elsif !DockingStation.empty?

    end
  end

end

class

=end

#check to commit
