require 'spec_helper'
require 'sparkly/plugin'

module Sparkly
  describe Plugin do

    before do
       @sparkly = Sparkly::Plugin.new("./spec/test_data/foo_bar.rb")
    end

    describe 'initialize' do
      it 'instance' do
        @sparkly.must_be_kind_of(Sparkly::Plugin)
      end
    end

    describe 'file' do
      it 'parse name' do
        @sparkly.name.must_equal("foo_bar")
      end

      it 'exists file' do
        @sparkly.file?.must_equal(true)
      end

      it 'instance' do
        @sparkly.instance.must_be_kind_of(FooBar)
      end
    end

       
  end
end
