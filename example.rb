require 'b_tree'

root = BTree::BranchNode.new(
  [
    BTree::BranchEntry.new(39, nil),
    BTree::BranchEntry.new(
      83,
      BTree::LeafNode.new(
        [
          BTree::Entry.new(55, 234),
          BTree::Entry.new(57, 239),
          BTree::Entry.new(57, 294)
        ],
        nil,
        nil
      )
    ),
    BTree::BranchEntry.new(98, nil)
  ]
)

key = 57
puts "Finding #{key}..."
puts

result = root.find(57)
result.each do |entry|
  puts "\t\trow_id: #{entry.row_id}"
end
