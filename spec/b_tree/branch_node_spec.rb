require 'spec_helper'

describe BTree::BranchNode do
  let(:branch_node) { described_class.new(children) }

  describe '#find' do
    let(:key) { 57 }
    let(:children) { [instance_double(BTree::BranchNode)] }

    it 'calls #find to the first children' do
      expect(children.first).to receive(:find).with(key)
      branch_node.find(key)
    end
  end
end
