require_relative 'bike'

class DockingStation
  attr_reader :bikes


  def initialize()
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless !@bikes.empty?  #'guard condition'
    @bikes.pop
  end

  def dock_bike(bike)
    raise "There is no more capacity" unless @bikes.length == 0
     @bikes << bike

  end


end
