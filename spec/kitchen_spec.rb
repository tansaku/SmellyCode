require 'kitchen'

describe 'kitchen' do
  let(:contents) do
    [
      {name: 'Plate', owner: 'Jon', state: :dirty, location: :sink},
      {name: 'Cup', owner: 'Jon', state: :clean, location: :cupboard},
      {name: 'Plate', owner: 'Sam', state: :clean, location: :cupboard},
      {name: 'Cup', owner: 'Sam', state: :dirty, location: :dishwasher},
    ]
  end
  it 'should print clean inventory in cupboard by owner' do
    expect(self).to receive(:puts).with("Jon's Cup")
    expect(self).to receive(:puts).with("Sam's Plate")
    print_inventory_by_owner contents
  end
end
