class DockingStation

  attr_reader :station
  def initialize()
    @station = station
  end



  def release_bike
  end

  def dock_bike
  end

  def return_bike
  end

  def has_bike?
    @station.empty?
  end

end


class Bike

  attr_reader :bike
  def initialize()
    @bike = bike
  end

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
