require 'spec_helper'
require 'sparkly/plugins'

module Sparkly
  describe Plugins do

    before do
      @sparkly = Sparkly::Plugins.new("./spec/test_data/")
    end

    describe 'initialize' do
      it 'instance' do
        @sparkly.must_be_kind_of(Hash)
      end

      it 'instalnce name' do
        @sparkly[:foo_bar].must_be_kind_of(FooBar)
      end
    end

  end
end
