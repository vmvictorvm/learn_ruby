require_relative 'temperature.rb'
class Celsius < Temperature
  def initialize(val)
    super({:c => val})
  end
end
