module BTree
  class Entry
    def initialize(key, row_id)
      @key = key
      @row_id = row_id
    end

  end

  class LeafNode

    def initialize(entries, next_node, previous_node)
      @entries = entries
      @next_node = next_node
      @previous_node = previous_node
    end

    def find(key)
    end

    private

    attr_reader :entries
  end
end
