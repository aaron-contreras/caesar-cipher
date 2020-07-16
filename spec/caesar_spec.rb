require_relative '../lib/caesar.rb'

describe '#caesar_cipher' do
  context 'no shifts' do
    it 'returns the same string given as an argument' do
      expect(caesar_cipher('Aaron', 0)).to eq 'Aaron'
    end
  end
  
  context 'positive shifts' do
    it 'returns "bbb" given "aaa" and 1' do
      expect(caesar_cipher('aaa', 1)).to eq 'bbb'
    end

    it 'returns "zzz" given "aaa" and 25' do
      expect(caesar_cipher('aaa', 25)).to eq 'zzz'
    end

    it 'returns "aaa" given "aaa" and 26' do
      expect(caesar_cipher('aaa', 26)).to eq 'aaa'
    end

    it 'returns "aaa" given "aaa" and 104' do
      expect(caesar_cipher('aaa', 104)).to eq 'aaa'
    end

    it 'returns "Bbspo" given "Aaron" and 1' do
      expect(caesar_cipher('Aaron', 1)).to eq 'Bbspo'
    end
  end
  
  context 'negative shifts' do
    it 'returns "aaa" given "bbb" and -1' do
      expect(caesar_cipher('bbb', -1)).to eq 'aaa'
    end

    it 'returns "Aqnjd" given "Broke" and -1' do
      expect(caesar_cipher('Broke', -1)).to eq 'Aqnjd'
    end

    it 'returns "aaa" given "aaa" and -104' do
      expect(caesar_cipher('aaa', -104)).to eq 'aaa'
    end

    it 'returns "Panama" given "Panama" and -104' do
      expect(caesar_cipher('Panama', -104)).to eq 'Panama'
    end
  end
end