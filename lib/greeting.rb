class Greeting
  def self.greet(name)
    uppercase_names, lowercase_names = [name].flatten.partition{ |n| n.upcase == n }

    lowercase_names = LowercaseNames.new(lowercase_names).names

    if (!lowercase_names.empty?)
      if lowercase_names.length <= 2
        "Hello, #{lowercase_names.join(" and ")}."
      else
        last_name = lowercase_names.pop

        "Hello, #{lowercase_names.join(', ')}, and #{last_name}."
      end
    else
      "HELLO #{uppercase_names.first}!"
    end
  end
end

class LowercaseNames
  def initialize(names)
    @names = names
  end

  def names
    @names
  end
end

class NilClass
  def to_s
    "my friend"
  end

  def upcase
    to_s
  end
end


