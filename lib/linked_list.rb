require_relative 'node.rb'

class LinkedList
    attr_reader :head, :next_node, :data
    def initialize(head = nil)
        @head
        @next_node
    end

    # append method will look to see if there is a head assigned, if there is no head then we will set head as new_node which creates a new node that we can pass data into. 

    #If we already have a head, the node we are currently on will then call the next_node method to create a new node that we can pass data into. The while loop will loop through each node and will stop when the next_node == nil. for that node that has next_node = nil, we will set current_node.next_node as new_node which will create a new node and link it! 
 
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

    # create a count method to count the number of nodes in the list. 

    # We are starting our count at 0 and setting our current node as the head or the first node. The while loops functions to add 1 to the count while current_node does not == nil. Once we hit a current_node that = nil, we exit the loop and we return count. 

    def count
        count = 0
        current_node = @head
        while !current_node.nil?   
            count += 1
            current_node = current_node.next_node
        end
         count

    end

    # to_string method will return the data in the list as a single string.

    # set the starting `string` variable to an empty string and set the `current_node` to be @head/ the first node. Then run a while loop. Whiele current_node does not equal nil, we want to shovel in the data thats being passed into the `current_node` along with a space at the end of the data. Once the loop reaches the last node (current_node.nil? = true) it will return the `string` value and remove the last space. 

    def to_string
        string = ""
        current_node = @head

        while !current_node.nil?   
            string << current_node.data + " "
            current_node = current_node.next_node
        end
        string.chop

    end

    # method to add a node to the beginning of the list - this node will become our head! 
    def prepend(data)
        new_node = Node.new(data)
        current_node = @head

        if @head == nil
            @head = new_node

        else
            current_node = new_node
            
            current_node.next_node = @head

            @head = current_node

        end
    end
end