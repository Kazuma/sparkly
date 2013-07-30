$: << './'

require 'sinatra'
require 'haml'

require 'lib/sparkly'

set :haml, { :format => :html5 }

get '/' do
  sparkly = Sparkly.new

  @star = sparkly.star_index
  @weekly_star = sparkly.weekly_star_index
  @weather = sparkly.weather
  @tomorrow_star = sparkly.tomorrow_star_index
  @tomorrow_weather = sparkly.tomorrow_weather
  @weekly_weather = sparkly.weekly_weather
  @amedas = sparkly.amedas
  @events = sparkly.astro_event

  haml :index
end
