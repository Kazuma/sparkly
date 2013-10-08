require 'spec_helper'

module Sparkly
  describe Plugins do

    subject {
      Sparkly::Plugins.new("./spec/test_data/")
    }

    context 'initialize' do
      it 'instance' do
        expect(subject).to be_kind_of(Hash)
      end

      it 'instalnce name' do
        expect(subject[:foo_bar]).to be_kind_of(FooBar)
      end
    end

  end
end
