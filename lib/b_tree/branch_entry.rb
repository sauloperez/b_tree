module BTree
  class BranchEntry
    attr_reader :key, :node

    def initialize(key, node)
      @key = key
      @node = node
    end

    def to_s
      "<#{key}, #{node}>"
    end

    def find(key)
      node.find(key)
    end
  end
end
