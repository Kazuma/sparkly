class Astro < Sparkly::Base

  def initialize
    @url = "http://www.nao.ac.jp/astro/sky/#{Time.now.year}/#{Time.now.strftime('%m')}.html"
  end

  def events
    feed('//article/table/tr')
  end

end
