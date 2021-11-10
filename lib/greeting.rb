class Greeting
  def self.greet(name)
    lowercase_names, uppercase_names = [name].partition{ |n| n.upcase != n }

    "Hello, #{name}."
  end
end

class NilClass
  def to_s
    "my friend"
  end
end


