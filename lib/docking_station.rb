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
    raise "There is no more capacity" if full? #error if bike is already has been docked
     @bikes << bike #saves docked bike into memory so we can see it later
  end

  private

  def full?
    @bikes.count >=20
  end


  def empty?
    @bikes.empty?
  end


end
