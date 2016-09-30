class Bike

  attr_accessor :working

  def initialize(working=true)
    @working = working
  end

  def status(status)
    @working = status
  end

end


# pull test
