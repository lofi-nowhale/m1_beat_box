require 'rspec'
require './lib/linked_list.rb'
require './lib/node.rb'

RSpec.describe LinkedList do
    describe "#initialize" do
        it "is an instance of the LinkedList Class" do
            list = LinkedList.new

            expect(list).to be_a(LinkedList)
        end
    end
end