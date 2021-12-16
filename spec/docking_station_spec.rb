require 'docking_station'

describe DockingStation do 
  it { expect(subject).to respond_to(:release_bike) }
  it { expect(subject).to respond_to(:dock).with(1).argument }
  # it { expect(subject).to respond_to(:initialize).with(0..1).arguments}

  it 'releases working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end
   
  it 'returns a bike to dock' do
    bike = Bike.new
    bikes = []
    bikes << bike
    expect(subject.dock(bikes[0])).to eq bikes
  end

  describe '#release_bike' do
    it 'no bikes avaliable' do
      expect {subject.release_bike}.to raise_error 'no bikes avaliable'
    end
  end

  describe '#dock' do 
    it 'Dock already in use' do 
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'no space available'
    end
  end 

  it 'The capacity of a given station' do 
    station = DockingStation.new(34)
    34.times {station.dock(Bike.new)}
    expect { station.dock(Bike.new) }.to raise_error 'no space available'
  end
end 



