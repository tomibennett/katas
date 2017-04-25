require_relative '../src/roman_numerals'

RSpec.describe '#convert' do
  describe 'basic cases' do
    it 'converts 1 to I' do
      expect(convert 1).to eq 'I'
    end

    it 'converts 5 to V' do
      expect(convert 5).to eq 'V'
    end

    it 'converts 10 to X' do
      expect(convert 10).to eq 'X'
    end

    it 'converts 50 to L' do
      expect(convert 50).to eq 'L'
    end

    it 'converts 100 to C' do
      expect(convert 100).to eq 'C'
    end

    it 'converts 500 to D' do
      expect(convert 500).to eq 'D'
    end

    it 'converts 1000 to M' do
      expect(convert 1000).to eq 'M'
    end
  end

  describe 'addition cases' do
    it 'converts 2 to II' do
      expect(convert 2).to eq 'II'
    end

    it 'converts 20 to XX' do
      expect(convert 20).to eq 'XX'
    end

    it 'converts 21 to XXI' do
      expect(convert 21).to eq 'XXI'
    end

    it 'converts 2325 to MMCCCXXV' do
      expect(convert 2325).to eq 'MMCCCXXV'
    end
  end

  describe 'substraction cases' do
    it 'converts 4 to IV' do
      expect(convert 4).to eq 'IV'
    end

    it 'converts 9 to IX' do
      expect(convert 9).to eq 'IX'
    end

    it 'converts 14 to XIV' do
      expect(convert 14).to eq 'XIV'
    end

    it 'converts 40 to XL' do
      expect(convert 40).to eq 'XL'
    end

    it 'converts 44 to XLIV' do
      expect(convert 44).to eq 'XLIV'
    end

    it 'converts 1999 to MCMXCIX' do
      expect(convert 1999).to eq 'MCMXCIX'
    end
  end
end
