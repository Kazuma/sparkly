# encoding: utf-8

require 'nokogiri'
require 'open-uri'

class Sparkly
  def initialize
    date = Time.now
    @starry = {
      :naha => "http://weather.yahoo.co.jp/weather/jp/expo/starry/47/9110.html",
      :nago => "http://weather.yahoo.co.jp/weather/jp/expo/starry/47/9120.html"
    }
    @weather = "http://weather.yahoo.co.jp/weather/jp/47/9110.html"
    @astro = "http://www.nao.ac.jp/astro/sky/#{date.year}/#{date.strftime('%m')}.html"
  end

  def star_expornet
    list = []

    @starry.each do |key, url|
      text = star_pase(feed(url)).sub(/指数/, '　指数')
      if key == :naha
        list << "那覇は#{text} です"
      else
        list << "名護は#{text} です"
      end
    end
    list
  end

  def weather
    list = []
    html = feed(@weather)
    list << html.xpath('//table[@class="yjw_table"]/tr/td[1]/table/tr[2]/td').first.text.strip
    list << html.xpath('//table[@class="yjw_table"]/tr/td[2]/table[1]/tr/td/small').first.text
    list << html.xpath('//table[@class="yjw_table"]/tr/td[2]/table[2]/tr').first.text.strip.gsub(/^\s+/, '').each_line { |line| line }
  end

  def weekly_weather
    html = feed(@weather)
    html.xpath('//div[@id="yjw_week"]/table[1]').inner_html
  end

  def astro_event
    html = feed(@astro)
    html.xpath('//div[@id="sky-content"]/table[1]/tr')
  end

  private
    def feed(url)
      Nokogiri::HTML(open(url))
    end

    def star_pase(html)
      html.xpath('//tr[3]/td').first.text.strip
    end
end
