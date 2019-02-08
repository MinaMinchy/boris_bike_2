require 'docking_station.rb'

describe DockingStation do
  it 'DockingStation responds to' do
    expect(subject).to respond_to :release_bike
  end

  it "gets the bike and expects it to work" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    docking_station.release_bike
    expect(docking_station.release_bike.working?).to eq true



  end

  it 'docks a bike' do
    # arrange
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock_bike(bike)
    expect(docking_station.bike.class).to eq Bike
  end




  it { is_expected.to respond_to(:dock_bike).with(1).argument }



  it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

end
