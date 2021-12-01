class Greeting
  def self.greet(name)
    uppercase_names, lowercase_names = [name].flatten.partition{ |n| n.upcase == n }

    lowercase_names = LowercaseNames.new(lowercase_names)

    if (lowercase_names.present?)
      lowercase_names.greeting
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

  def greeting
    if @names.length <= 2
      "Hello, #{@names.join(" and ")}."
    else
      last_name = @names.pop

      "Hello, #{@names.join(', ')}, and #{last_name}."
    end
  end

  def present?
    !@names.empty?
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


