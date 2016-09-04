module BTree
  class BranchNode
    attr_reader :entries

    def initialize(entries)
      @entries = entries
    end

    def find(key)
      matching_entry = entries.find { |entry| entry.key >= key }
      matching_entry.find(key)
    end
  end
end
