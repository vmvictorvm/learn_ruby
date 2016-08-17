require_relative 'temperature.rb'
class Fahrenheit < Temperature
  def initialize(val)
    super({:f => val})
  end
end
