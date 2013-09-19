class Amedas < Sparkly::Base

  def initialize
    @url = "http://weather.yahoo.co.jp/weather/raincloud/47/?c=g2"
  end

  def index
    inner_html('//div[@id="yjw_amedas"]/table/tr/td/img/@src')
  end

end
