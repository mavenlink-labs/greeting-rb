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
  end
end
