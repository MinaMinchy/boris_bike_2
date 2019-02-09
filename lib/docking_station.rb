# require_relative 'bike'

class DockingStation
  attr_reader :bikes


  def initialize()
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?  #'guard condition'
    @bikes.pop
  end

  def dock_bike(bike)
    raise "There is no more capacity" if @bikes.count >=20 #error if bike is already has been docked
     @bikes << bike #saves docked bike into memory so we can see it later

  end


end
