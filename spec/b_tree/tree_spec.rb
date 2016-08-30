require 'spec_helper'

module BTree
  describe Tree do
    let(:tree) { described_class.new(branch_node) }
    let(:branch_node) { instance_double(BranchNode) }

    describe '#initialize' do
      subject { tree }

      it { is_expected.to be_a(Tree) }
    end

    describe '#find' do
      let(:key) { 57 }

      it 'calls #find on its root node' do
        expect(branch_node).to receive(:find).with(key)
        tree.find(key)
      end
    end
  end
end
