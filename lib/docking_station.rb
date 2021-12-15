require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end 

 def release_bike
   fail 'no bikes avaliable' if @bikes.empty?
   @bikes.pop

 end

 def dock(bike)
  fail 'no space available' if @bikes.count >= 20
  @bikes << bike
  @bikes[-1]
  
 end

end
