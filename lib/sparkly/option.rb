require 'optparse'

module Sparkly
  class Option < Hash

    def initialize(options)
      super nil
      op = OptionParser.new
      op.on('-p', '--port VAL'){ |v| self[:port] = v }
      op.on('-b', '--bind VAL'){ |v| self[:bind] = v }
      op.parse!(options)
    end

  end
end
