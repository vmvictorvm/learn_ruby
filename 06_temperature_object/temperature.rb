require 'pry'
class Temperature
  attr_accessor :f
  attr_accessor :c
  def initialize(val)
    if val.has_key?(:f)
      @f = val[:f]
    end
    if val.has_key?(:c)
      @c = val[:c]
    end
  end

  def to_celsius
    if not @f.nil?
      return (@f - 32) * 5.0/9.0
    end
    if not @c.nil?
      return @c
    end
  end

  def to_fahrenheit
    if not @c.nil?
      return @c * 9.0/5.0 + 32
    end
    if not @f.nil?
      return @f
    end
  end

  def self.in_fahrenheit(f_val)
    obj = Temperature.new({:f => f_val})
    obj.c = obj.to_celsius
    return obj
  end

  def self.in_celsius(c_val)
    obj = Temperature.new({:c => c_val})
    obj.f = obj.to_fahrenheit
    return obj
  end
end
