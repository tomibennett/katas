require_relative '../src/test'

RSpec.describe Test do
  it 'returns one' do
    expect(described_class.new.test).to eq 1
  end
end
