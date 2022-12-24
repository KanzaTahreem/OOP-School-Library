require_relative './App/app'

class Options
  def initialize
    @app = App.new(self)
end

def main
  Options.new
end

main
