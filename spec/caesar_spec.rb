require_relative '../lib/caesar.rb'
describe '#caesar_cipher' do
  context 'no shifts' do
    it 'returns the same string given as an argument' do
      expect(caesar_cipher('aaron', 0)).to eq 'aaron'
    end
  end
end