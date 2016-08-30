module BTree
  class BranchNode
    attr_reader :children

    def initialize(children)
      @children = children
    end

    def find(key)
      children.first.find(key)
    end
  end
end
