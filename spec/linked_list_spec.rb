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

    describe "#append" do
        it "adds a new piece of data to the list" do
            list = LinkedList.new


            list.append("doop")

            expect(list.head.data).to eq("doop")
            expect(list.head.next_node).to eq(nil)
        end

        it "can add multiple nodes with data to the list" do
            list = LinkedList.new


            list.append("doop")
            list.append("deep")

            expect(list.head.data).to eq("doop")
            expect(list.head.next_node).to be_a(Node)
            expect(list.head.next_node.data).to eq("deep")
        end
    end

    describe "#count" do
        it "can count the number of data in the list" do 
            list = LinkedList.new
            expect(list.count).to eq(0)

            list.append("doop")
            expect(list.count).to eq(1)
        end

        it "can count more than one node in the list" do
            list = LinkedList.new

            list.append("doop")
            list.append("deep")

            expect(list.count).to eq(2)

            list.append("plop")
            list.append("boo")

            expect(list.count).to eq(4)

        end
    end

    describe "to_string" do
        it "can return a string of the data in the list" do
            list = LinkedList.new
            expect(list.to_string).to eq("")

            list.append("doop")

            expect(list.to_string).to eq("doop")

        end

        it "can return of multiple data in the list" do
            list = LinkedList.new

            list.append("doop")
            list.append("deep")

            expect(list.to_string).to eq("doop deep")
        end
    end


    # want to set the new node as @head 
    describe "#prepend" do 
        it "can add a node to the beginning of the list" do
            list = LinkedList.new

            list.append("plop")
            list.append("suu")
            list.prepend("dop")

            expect(list.head.data).to eq("dop")
            expect(list.to_string).to eq("dop plop suu")

        end
    end

    describe "#insert" do
        it "can insert one or more elements at a given position in the list" do 
            list = LinkedList.new

            list.append("plop")
            list.append("suu")
            list.prepend("dop")

            list.insert(1,"woo")

            expect(list.to_string).to eq("dop woo plop suu")

            list.insert(3, "dah")

            expect(list.to_string).to eq("dop woo plop dah suu")
        end
    end
end