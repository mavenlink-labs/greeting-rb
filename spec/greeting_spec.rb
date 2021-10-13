require 'rspec'
require_relative '../lib/greeting'

RSpec.describe Greeting do
  describe "#greet" do
    it "can greet a friend" do
      expect(Greeting.greet("Bob")).to eq "Hello, Bob."
    end

    it 'can greet a null friend' do
      expect(Greeting.greet(nil)).to eq "Hello, my friend."
    end

    it 'can shout at a friend' do
      expect(Greeting.greet('BOB')).to eq "HELLO BOB!"
    end

    it 'can greet with more then 1 name' do
      expect(Greeting.greet(['Jill', 'Jack'])).to eq "Hello, Jill and Jack."
    end

    it 'can greet more than 2 names' do
      expect(Greeting.greet(['Amy', 'Brian', 'Charlotte'])).to eq "Hello, Amy, Brian, and Charlotte."
    end

    it 'can greet more than 2 names with shouting' do
      expect(Greeting.greet(["Amy", "BRIAN", "Charlotte"])).to eq "Hello, Amy and Charlotte. AND HELLO BRIAN!"
    end
  end
end
