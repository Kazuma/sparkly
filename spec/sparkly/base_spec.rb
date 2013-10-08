require 'spec_helper'

module Sparkly

  describe Base do

    subject {
      WebMock.stub_request(:get, 'http://example.com').to_return(:body => "<html><body><div>hoge</div></body></html>")
      Sparkly::Base.new("http://example.com")
    }

    context 'inner HTML' do
      it 'example.com' do
        expect(subject.inner_html("//div")).to eq("hoge")
      end
    end

    context 'html' do
      it 'example.com' do
        expect(subject.feed("//div").size).to eq(1)
      end
    end
  end
end

