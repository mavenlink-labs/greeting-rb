class Greeting
  def self.greet(name)
    uppercase_names, lowercase_names = [name].partition{ |n| n.upcase == n }

    lowercase_names.each { |l_name| return "Hello, #{l_name}." }
    uppercase_names.each { |u_name| return "HELLO #{u_name}!" }
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


