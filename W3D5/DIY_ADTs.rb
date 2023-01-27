class Stack
    attr_reader :unfair_line
    def initialize
      # create ivar to store stack here!
      @unfair_line = []
    end

    def push(el)
      # adds an element to the stack
      @unfair_line << el
    end

    def pop
      # removes one element from the stack
      @unfair_line.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      p @unfair_line[-1]
    end
end

class Queue
    def initialize
        # create ivar to store stack here!
        @fair_line = []
    end
  
    def enqueue(el)
    # adds an element to the stack
    @unfair_line << el
    end

    def dequeue
    # removes one element from the stack
    @unfair_line.shift
    end

    def peek
    # returns, but doesn't remove, the top element in the stack
    p @unfair_line[0]
    end
end


#map is a 2d array w [key,value]
class Map
    def initialize
        @array = []
    end

    def set(key, value)
        @array << [key, value]
    end

    def get(key)
        @array.each do |pairs|
            keys = pairs[0]
            if keys == key
                return pairs
            end
        end
    end

    def delete(key)
        underlying_array.reject! do |pairs| 
            pairs[0] == key 
        end
    end

    def show
        @array
    end

end










