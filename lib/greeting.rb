class Greeting
  def self.greet(name)
    name = name || 'my friend'
    return "HELLO #{name}!" if name == name.upcase
    "Hello, #{name}."
  end

  def capitalized?

  end
end
