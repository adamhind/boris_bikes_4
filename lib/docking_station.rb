require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end 

 def release_bike
    fail 'no bikes avaliable' if empty?
    fail 'This bike is broken' if broken?
   @bikes.pop
 end

 def dock(bike)
  fail 'no space available' if full?
  @bikes << bike
 end

 private 
 def full?
  @bikes.count >= @capacity
 end 

 def empty?
  @bikes.empty?
 end

 def broken?
  @bikes[-1].broken
 end

end
