class Greeting
  def self.greet(name)
    name = name || 'my friend'
    "Hello, #{name}."
  end
end
