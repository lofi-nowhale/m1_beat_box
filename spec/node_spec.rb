require 'rspec'
require './lib/node.rb'

RSpec.describe Node do
    describe "#initialize" do
        it "is an instance of the Node class" do
            node = Node.new("plop")

            expect(node).to be_a(Node)
        end
    end
end