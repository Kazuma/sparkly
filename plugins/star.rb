class Star < Sparkly::Base

  def initialize
    @url = "http://weather.yahoo.co.jp/weather/jp/expo/starry/47/9110.html"
  end

  def today
    inner_html("//div[@id='contents-body']/div[@id='main']/div[@class='expoTbl']/table/tr[5]/td[1]")
  end

  def tomorrow
    inner_html("//div[@id='contents-body']/div[@id='main']/div[@class='expoTbl']/table/tr[5]/td[2]")
  end

  def weekly
    inner_html('//div[@id="yjw_sissu_week"]/table[1]/tr[2]')
  end

end
