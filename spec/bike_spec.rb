require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }
  
  describe "#report" do
    it "reports a bike when not working" do
      bike = Bike.new
      bike.report
      expect(bike.working).to eq false
    end
  end
end