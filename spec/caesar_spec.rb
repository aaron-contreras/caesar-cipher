require_relative '../lib/caesar.rb'

describe '#caesar_cipher' do
  subject { caesar_cipher(string, shift_factor) }
  let(:string) { 'Pants'}


  context 'given no shifts' do
    let(:shift_factor) { 0 }
    it 'returns the same string given as an argument' do
      expect(subject).to eq string
    end
  end
  
  context 'positive shifts' do
    context 'given non-alphanumeric characters' do
      let(:string) { 'Pants*/&&^' }
      let(:shift_factor) { 1 }

      it 'only shifts alphanumeric characters' do
        expect(subject).to eq 'Qbout*/&&^'
      end
    end

    context 'given small shifts' do
      let(:shift_factor) { 1 }

      it 'returns "Qbout"' do
        expect(subject).to eq 'Qbout'
      end
    end

    context 'given large shifts' do
      let(:shift_factor) { 104 }

      it 'wraps around properly' do
        expect(subject).to eq 'Pants'
      end
    end
  end
  
  context 'negative shifts' do
    context 'given non-alphanumeric characters' do
      let(:string) { 'Pants*/&&^' }
      let(:shift_factor) { 1 }

      it 'only shifts alphanumeric characters' do
        expect(subject).to eq 'Qbout*/&&^'
      end
    end

    context 'given small shifts' do
      let(:shift_factor) { -1 }
      it 'returns "Ozmsr"' do
        expect(subject).to eq 'Ozmsr'
      end
    end

    context 'given large shifts' do
      let(:shift_factor) { -104 }
      it 'wraps around properly' do
        expect(subject).to eq 'Pants'
      end
    end
  end
end