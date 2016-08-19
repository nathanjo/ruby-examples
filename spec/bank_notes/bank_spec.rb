require 'spec_helper'

describe Bank do

  let(:bank) {Bank.new}
  let(:helper) {Helper.new}
  let(:exception) {Bank.new}

  before do
    allow(BankException).to receive(:new).and_return(exception)
    allow(Helper).to receive(:new).and_return(helper)
  end

  context 'withdrawal' do

    it 'should despense notes for 30.00' do
      expect(bank.withdrawal(30.00)).to eq("20.00, 10.00")
    end
    it 'should despense notes for 80.00' do
      expect(bank.withdrawal(80.00)).to eq("50.00, 20.00, 10.00")
    end
    
  end

  context 'exceptions' do

    it 'throws NoteUnavailableException for 125' do
      expect {
        bank.withdrawal(125.00)
        raise BankException::NoteUnavailableException
      }.to raise_error(BankException::NoteUnavailableException)
    end
    it 'throws InvalidArgumentException for -130' do
      expect {
        bank.withdrawal(-130.00)
        raise BankException::InvalidArgumentException
      }.to raise_error(BankException::InvalidArgumentException)
    end

  end
end
