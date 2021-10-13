class Greeting
  def self.greet(name)
    name = name || 'my friend'
    formatted_name = format_names(name)
    return "HELLO #{format_names(name)}!" if capitalized?(name)
    "Hello, #{format_names(name)}."
  end

  def self.capitalized?(name)
    name == name.upcase
  end

  def self.format_names(name)
    names = [name].flatten
    names.join(' and ')
  end
end
