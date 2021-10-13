class Greeting
  def self.greet(name)
    name = name || 'my friend'
    formatted_name = format_names(name)
    return "HELLO #{formatted_name}!" if capitalized?(formatted_name)
    "Hello, #{formatted_name}."
  end

  def self.capitalized?(name)
    name == name.upcase
  end

  def self.format_names(name)
    names = [name].flatten
    if names.length > 2
      last_name = names.pop
      return names.join(', ') + ', and ' + last_name
    end
    names.join(' and ')
  end
end
