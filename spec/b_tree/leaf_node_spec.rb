require 'spec_helper'

describe BTree::LeafNode do
  let(:next_node) { instance_double(described_class) }
  let(:previous_node) { instance_double(described_class) }
  let(:leaf_node) { described_class.new(entries, next_node, previous_node) }

  describe '#find' do
    subject { leaf_node.find(key) }

    let(:key) { 11 }
    let(:entries) { [instance_double(BTree::Entry)] }

    it { is_expected.to eq(123) }

    it 'calls #find on the entries' do
      expect(entries).to receive(:find).with(key)
      leaf_node.find(key)
    end
  end
end
