require 'spec_helper'

describe Grouping do

  let(:grouping) {Grouping.new}
  let(:helper) {Helper.new}
  
  before do
    allow(Helper).to receive(:new).and_return(helper)
  end

  range_ex1 = 15
  hash_ex1 = [10 , 1, -20 , 14, 99, 136, 19, 20, 117, 22 , 93, 120, 131]

  context 'setting range' do

    it 'should set the range' do
      helper.set_range(range_ex1)
      expect(helper.range).to eq(range_ex1)
    end

    it 'should placed the range' do
      helper.set_range(range_ex1)
      expect(helper.range_placed?).to eq(true)
    end
  end

  context 'execute' do

    it 'should return correct data' do
      grouping.set_range(range_ex1)
      grouping.validate_hash(hash_ex1)
      expect(grouping.execute).to eq("[[-20], [1, 10, 14], [19, 20, 22], [93, 99], [117, 120], [131], [136]]")
    end
  end

end
