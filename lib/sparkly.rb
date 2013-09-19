module Sparkly

  require 'rinne'
  require 'nokogiri'
  require 'open-uri'

  require 'sparkly/base.rb'
  require 'sparkly/option.rb'
  require 'sparkly/plugins.rb'
  require 'sparkly/plugin.rb'
  require 'sparkly/web.rb'

  class << self
    def start(option)
      Sparkly::Web.run!(Option.new(option))
    end
  end

end
