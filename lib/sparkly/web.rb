require 'sinatra'
require 'haml'

module Sparkly
  class Web < Sinatra::Base

    set :haml, { :format => :html5 }
    set :root, "#{File.dirname(__FILE__)}/../../"

    configure do
      set :plugins, Plugins.new("#{settings.root}/plugins")
    end

    get '/' do
      @plugins = settings.plugins
      haml :index
    end
  end
end
