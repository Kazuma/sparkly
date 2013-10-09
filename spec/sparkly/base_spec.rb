require 'spec_helper'
require 'sparkly/base'

module Sparkly
  describe Base do

    before do
      WebMock.stub_request(:get, 'http://example.com').to_return(:body => "<html><body><div>hoge</div></body></html>")
      @sparkly = Sparkly::Base.new("http://example.com")
    end

    describe 'inner HTML' do
      it 'example.com' do
        @sparkly.inner_html("//div").must_equal("hoge")
      end
    end

    describe 'html' do
      it 'example.com' do
        @sparkly.feed("//div").size.must_equal(1)
      end
    end
  end
end

