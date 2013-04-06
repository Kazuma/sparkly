# encoding: utf-8

require 'nokogiri'
require 'open-uri'

class Sparkly
  def initialize
    date = Time.now
    @star = "http://weather.yahoo.co.jp/weather/jp/expo/starry/47/9110.html"
    @weather = "http://weather.yahoo.co.jp/weather/jp/47/9110.html"
    @amedas = "http://weather.yahoo.co.jp/weather/raincloud/47/?c=g2"
    @astro = "http://www.nao.ac.jp/astro/sky/#{date.year}/#{date.strftime('%m')}.html"
  end

  def star_index
    tree = 1
    html = feed(@star)
    star_parse(html, tree)
  end

  def tomorrow_star_index
    tree = 3
    html = feed(@star)
    star_parse(html, tree)
  end

  def weekly_star_index
    html = feed(@star)
    html.xpath('//div[@id="yjw_sissu_week"]/table[1]/tr[2]').inner_html
  end

  def weather
    tree = 1
    html = feed(@weather)
    weather_parse(html, tree)
  end

  def tomorrow_weather
    tree = 2
    html = feed(@weather)
    weather_parse(html, tree)
  end

  def weekly_weather
    html = feed(@weather)
    html.xpath('//div[@id="yjw_week"]/table[1]').inner_html
  end

  def amedas
    html = feed(@amedas)
    html.xpath('//div[@id="yjw_amedas"]/table/tr/td/img/@src')
  end

  def astro_event
    html = feed(@astro)
    html.xpath('//div[@id="sky-content"]/table[1]/tr')
  end

  private
    def feed(url)
      Nokogiri::HTML(open(url))
    end

    def star_parse(html, tree)
      html.xpath("//div[@id='yjw_sissu_todaytomorrow']/table[2]/tr/td[#{tree}]/table").inner_html
    end

    def weather_parse(html, tree)
    html.xpath("//div[@id='yjw_area_todaytomorrow']/table[@class='yjw_table'][#{tree}]").inner_html
    end
end
