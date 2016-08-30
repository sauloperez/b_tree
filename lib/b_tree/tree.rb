module BTree
  class Tree

    # Constructor
    #
    # @param root_node [BranchNode]
    def initialize(root_node)
      @root_node = root_node
    end

    # @return [LeafNode]
    def find(key)
      root_node.find(key)
    end

    private

    attr_reader :root_node
  end
end
