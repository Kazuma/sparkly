$: << './'
# encoding: utf-8

require 'sinatra'
require 'haml'

require 'lib/sparkly'

set :haml, { :format => :html5 }

get '/' do
  sparkly = Sparkly.new

  @stars = sparkly.star_expornet
  @weather = sparkly.weather
  @weekly_weather = sparkly.weekly_weather
  @amedas = sparkly.amedas
  @events = sparkly.astro_event

  haml :index
end
