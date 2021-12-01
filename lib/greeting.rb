class Greeting
  def self.greet(name)
    uppercase_names, lowercase_names = [name].flatten.partition{ |n| n.upcase == n }


    lowercase_names.each { return NAMES_CLASSES[lowercase_names.length].new(lowercase_names).greeting }
    "HELLO #{uppercase_names.first}!"
  end
end

class SimpleNames
  def initialize(names)
    @names = names
  end

  def greeting
    "Hello, #{@names.join(" and ")}."
  end
end

class CompoundNames
  def initialize(names)
    @names = names
  end

  def greeting
    last_name = @names.pop

    "Hello, #{@names.join(', ')}, and #{last_name}."
  end
end

NAMES_CLASSES = Hash.new(CompoundNames)
NAMES_CLASSES[0] = SimpleNames
NAMES_CLASSES[1] = SimpleNames
NAMES_CLASSES[2] = SimpleNames

class NilClass
  def to_s
    "my friend"
  end

  def upcase
    to_s
  end
end


