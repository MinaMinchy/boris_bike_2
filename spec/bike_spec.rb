require 'docking_station.rb'

describe Bike do
  it 'responds to' do
    expect(subject).to respond_to :working?
  end
end