require 'spec_helper'
require 'sparkly/option'

module Sparkly

  describe Option do

    before do
      @sparkly = Sparkly::Option.new(['-p', '1234', '-b', '4567'])
    end

    describe 'parse option' do
      it 'initialize' do
        @sparkly.must_be_kind_of(Sparkly::Option)
      end

      it 'port' do
        @sparkly[:port].must_equal("1234")
      end

      it 'bind' do
        @sparkly[:bind].must_equal("4567")
      end
    end

  end

end
