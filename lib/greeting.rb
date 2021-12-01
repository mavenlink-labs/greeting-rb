class Greeting
  def self.greet(name)
    uppercase_names, lowercase_names = [name].flatten.partition{ |n| n.upcase == n }

    # lowercase_names.each { |l_name| return "Hello, #{lowercase_names.join(' and ')}." }
    # uppercase_names.each { |u_name| return "HELLO #{u_name}!" }
    if(!lowercase_names.empty?)
      "Hello, #{lowercase_names.join(' and ')}."
    else
      "HELLO #{uppercase_names.first}!"
    end
  end
end

class UppercaseGreeting
  def initialize(names)
    @names = names
  end

  def to_s
    @names.each { |u_name| return "HELLO #{u_name}!" }
  end
end

class LowercaseGreeting
  def initialize(names)
    @names = names
  end

  def to_s
    @names.each { |l_name| return "Hello, #{@names.join(' and ')}." }
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


