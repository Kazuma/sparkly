module Sparkly
  class Plugins < Hash

    def initialize(path)
      super nil
      plugin_load path
    end

    private
      def plugin_load(path)
        Dir.entries(path).map!{|c| Plugin.new("#{path}/#{c}") }.each do |file|
          next if !file.file?

          self[file.name.to_sym] = file.instance
        end
      end

  end
end
