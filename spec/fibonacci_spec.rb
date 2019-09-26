require 'spec_helper'
require_relative '../fibonacci'

FIBS_UNDER_4_MILLION = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,
                        987, 1597, 2584, 4181, 6765, 10_946, 17_711, 28_657,
                        46_368, 75_025, 121_393, 196_418, 317_811, 514_229,
                        832_040, 1_346_269, 2_178_309, 3_524_578].freeze

describe Fibonacci do
  describe '.numbers_upto' do
    subject do
      result = []
      described_class.numbers_upto(max_val) do |i|
        result << i
      end
      result
    end

    context 'when called with max_val = 1' do
      let(:max_val) { 1 }

      it 'yields only 1' do
        expect(subject).to eq([1])
      end
    end

    context 'when called with max_val = 10' do
      let(:max_val) { 10 }

      it 'yields 1,2,3,5,8' do
        expect(subject).to eq([1, 2, 3, 5, 8])
      end
    end

    context 'when called with max_val = 4,000,000' do
      let(:max_val) { 4_000_000 }

      it 'yields all the fibonacci numbers under 4,000,000' do
        expect(subject).to eq(FIBS_UNDER_4_MILLION)
      end
    end
  end

  describe '.sum_even_numbers_upto' do
    subject { described_class.sum_even_numbers_upto(max_val) }

    context 'when called with max_val = 1' do
      let(:max_val) { 1 }

      it 'returns 0 because there are no Fibonacci numbers <= 1' do
        expect(subject).to eq(0)
      end
    end

    context 'when called with max_val = 10' do
      let(:max_val) { 10 }

      it 'returns 10' do
        expect(subject).to eq(10)
      end
    end

    context 'when called with max_val = 4,000,000' do
      let(:max_val) { 4_000_000 }

      it 'returns 4613732' do
        expect(subject).to eq(4613732)
      end
    end
  end
end