require_relative 'node.rb'

class LinkedList
    attr_reader :head, :next_node, :data
    def initialize(head = nil)
        @head
        @next_node
        @index
    end
 
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
        string.strip

    end

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

    def insert(index,data)
        new_node = Node.new(data)
        count = 1
        current_node = @head
        
         if @head == nil 
             @head = new_node

         else 
            while count != index
                count += 1
            
                current_node = current_node.next_node
            end
             new_node.next_node = current_node.next_node 
             current_node.next_node = new_node
        end

    end
end