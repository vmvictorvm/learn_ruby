class Friend
  attr_reader :name
  def initialize
  end

  def greet(name="")
    @name = name
    "Hello #{name}!"
  end
end
