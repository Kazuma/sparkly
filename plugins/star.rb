class Star < Sparkly::Base

  def initialize
    @url = "http://www.tenki.jp/indexes/starry_sky/10/50/9110.html"
  end

  def today
    inner_html("//div[@id='bd-main']/div[@class='contentsBox'][1]/div[@id='exponentLarge']/dl[@id='exponentLargeLeft']/dd")
  end

  def tomorrow
    inner_html("//div[@id='bd-main']/div[@class='contentsBox'][1]/div[@id='exponentLarge']/dl[@id='exponentLargeRight']/dd")
  end

  def weekly
    inner_html("//div[@id='bd-main']/div[@class='contentsBox'][2]/table[@id='cityWeeklyWeatherV2']/tbody/tr[2]")
  end

end
