module BTree
  class Entry
    attr_reader :key, :row_id

    def initialize(key, row_id)
      @key = key
      @row_id = row_id
    end
  end
end
