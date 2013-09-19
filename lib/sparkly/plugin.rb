module Sparkly
  class Plugin

    def initialize(file_path)
      @file_path = file_path
    end

    def name
      File.basename(@file_path,'.*')
    end

    def file?
      File.file?(@file_path)
    end

    def instance
      require @file_path
      eval("#{Rinne.camelize(name)}.new")
    end

  end
end
