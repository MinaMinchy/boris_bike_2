require_relative 'bike'

class DockingStation
  attr_reader :bike


  def initialize()
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless @bike #'guard condition'
    @bike
  end

  def dock_bike(bike)
     @bike = bike
  end


end
