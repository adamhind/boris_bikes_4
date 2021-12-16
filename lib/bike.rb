
class Bike
  attr_reader :broken
  attr_reader :working
  def initialize(working = true, broken = false)
    @working = working
    @broken = broken
  end
  
  def working?
    @working
  end

  def broken?
    @broken
  end

  def report
    @working = false
    @broken = true
  end



end