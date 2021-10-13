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
  end
end
