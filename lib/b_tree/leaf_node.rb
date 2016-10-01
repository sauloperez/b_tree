module BTree
  class LeafNode

    def initialize(entries, next_node, previous_node)
      @entries = entries
      @next_node = next_node
      @previous_node = previous_node
    end

    def find(key)
      puts "\tleaf: \t#{entries}"

      entries.find_all { |entry| entry.key == key }
    end

    private

    attr_reader :entries
  end
end
