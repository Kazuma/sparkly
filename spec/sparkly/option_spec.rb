require 'spec_helper'

module Sparkly

  describe Option do

    subject {
      Sparkly::Option
    }

    context 'parse option' do
      it 'initialize' do
        expect(subject.new(['-p', '1234', '-b', '5678'])).to be_kind_of(Sparkly::Option)
      end

      it 'port' do
        expect(subject.new(['-p', '1234', '-b', '4567'])[:port]).to eq("1234")
      end

      it 'bind' do
        expect(subject.new(['-p', '1234', '-b', '4567'])[:bind]).to eq("4567")
      end
    end

  end

end
