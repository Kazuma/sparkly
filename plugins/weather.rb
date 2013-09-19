class Weather < Sparkly::Base

  def initialize
    @url = "http://weather.yahoo.co.jp/weather/jp/47/9110.html"
  end

  def today
    inner_html("//div[@id='contents-body']/div[@id='main']/div[@class='forecastCity']/table/tr/td[1]")
  end

  def tomorrow
    inner_html("//div[@id='contents-body']/div[@id='main']/div[@class='forecastCity']/table/tr/td[2]")
  end

  def weekly
    inner_html('//div[@id="yjw_week"]/table[1]')
  end

end
