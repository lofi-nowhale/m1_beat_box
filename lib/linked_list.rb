require_relative 'node.rb'

class LinkedList
    attr_reader :head, :next_node, :data
    def initialize(head = nil)
        @head
        @next_node
    end

    # append method will look to see if there is a head assigned, if there is no head then we will set head as new_node which creates a new node that we can pass data into. 
    #If we already have a head, the node we are currently on will then call the next_node method to create a new node that we can pass data into
 
    def append(data)
    
        new_node = Node.new(data)
        current_node = @head

        if @head == nil
            @head = new_node

        else
            while !current_node.next_node.nil?   
                current_node = current_node.next_node

                #current node = tail node 

            end

            current_node.next_node = new_node
        end
    
    end

    # create a count method to count the number of things "data"
    #  

    def count
        count = 0
        current_node = @head
        while !current_node.nil?   
            count += 1
            current_node = current_node.next_node
        end
         count

    end

    def to_string
        string = ""
        current_node = @head

        while !current_node.nil?   
            string << current_node.data + " "
            current_node = current_node.next_node
        end
        string.chop

    end
end