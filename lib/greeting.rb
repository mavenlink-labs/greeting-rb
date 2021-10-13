class Greeting
  def self.greet(name)
    name = name || 'my friend'
    return "Hello, #{name.join ' and '}." if name.is_a? Array
    return "HELLO #{name}!" if capitalized?(name)
    "Hello, #{name}."
  end

  def self.capitalized?(name)
    name == name.upcase
  end
end
