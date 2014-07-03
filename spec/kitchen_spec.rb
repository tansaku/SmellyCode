require 'kitchen'

describe 'kitchen' do
  let(:c) do
    [
      {n: 'Plate', o: 'Jon', s: :d, l: :s},
      {n: 'Cup', o: 'Jon', s: :c, l: :c},
      {n: 'Plate', o: 'Sam', s: :c, l: :c},
      {n: 'Cup', o: 'Sam', s: :d, l: :d},
    ]
  end
  it 'should do some stuff' do
    expect(self).to receive(:puts).with("Jon's Cup")
    expect(self).to receive(:puts).with("Sam's Plate")
    do_something c
  end
end
