require 'kitchen'

describe 'kitchen' do
  let(:contents) do
    [
      {name: 'Plate', owner: 'Jon', status: :dirty, location: :sink},
      {name: 'Cup', owner: 'Jon', status: :clean, location: :cupboard},
      {name: 'Plate', owner: 'Sam', status: :clean, location: :cupboard},
      {name: 'Cup', owner: 'Sam', status: :dirty, location: :dishwasher},
    ]
  end
  let(:clean_cupboard_items) do
    [{name: 'Cup', owner: 'Jon', status: :clean, location: :cupboard},
      {name: 'Plate', owner: 'Sam', status: :clean, location: :cupboard}]
  end
  it 'should print some items that are clean and in the cupboard (alphabetically)' do
    expect(self).to receive(:puts).with("Jon's Cup")
    expect(self).to receive(:puts).with("Sam's Plate")
    print_clean_cupboard_items contents
  end

  it 'should get clean items in the cupboard' do
    expect(get_clean_cupboard_items(contents)).to eq clean_cupboard_items
  end
end
