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

    describe "#head" do
        it "has an empty readable attribute" do
            list = LinkedList.new

            expect(list.head).to eq(nil)
        end
    end
end