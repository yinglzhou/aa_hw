class GraphNode
    attr_reader :neighbors, :value
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        neighbors << node
    end
end


def bfs(starting_node, target_value)
    queue = [starting_node]



end