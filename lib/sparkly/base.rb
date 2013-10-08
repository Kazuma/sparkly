module Sparkly
  class Base

    def initialize(url = nil)
      @url = url unless url.nil?
    end

    def feed(path)
      Nokogiri::HTML(open(@url).read).xpath(path)
    end

    def inner_html(path)
      feed(path).inner_html
    end

  end
end
