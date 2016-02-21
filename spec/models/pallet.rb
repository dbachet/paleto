describe 'Pallet' do

  before do
    class << self
      include CDQ
    end
    cdq.setup
  end

  after do
    cdq.reset!
  end

  it 'should be a Pallet entity' do
    Pallet.entity_description.name.should == 'Pallet'
  end
end
