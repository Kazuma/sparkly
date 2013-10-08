require 'spec_helper'

module Sparkly
  describe Plugin do

    subject {
       Sparkly::Plugin.new("./spec/test_data/foo_bar.rb")
    }

    context 'initialize' do
      it 'instance' do
        expect(subject).to be_kind_of(Sparkly::Plugin)
      end
    end

    context 'file' do
      it 'parse name' do
        expect(subject.name).to eq("foo_bar")
      end

      it 'exists file' do
        expect(subject.file?).to be_true
      end

      it 'instance' do
        expect(subject.instance).to be_kind_of(FooBar)
      end
    end

       
  end
end
