require 'docking_station'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

  it 'releases working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end
   
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  describe 'release bike method' do
    it 'no bikes avaliable' do
      expect {subject.release_bike}.to raise_error 'no bikes avaliable'
    end
  end

  describe '#dock' do 
    it 'Dock already in use' do 
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'no space available'
    end
  end 
end 
