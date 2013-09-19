module Sparkly
  class Base

    def feed(path)
      Nokogiri::HTML(open(@url).read).xpath(path)
    end

    def inner_html(path)
      feed(path).inner_html
    end

  end
end
