require 'spec_helper'

describe BTree::LeafNode do
  let(:next_node) { instance_double(described_class) }
  let(:previous_node) { instance_double(described_class) }
  let(:leaf_node) { described_class.new(entries, next_node, previous_node) }

  describe '#find' do
    subject { leaf_node.find(key) }

    let(:key) { 11 }
    let(:entries) { [instance_double(BTree::Entry, key: 11)] }

    context 'when there is just one entry' do
      let(:entries) { [instance_double(BTree::Entry, key: 11)] }
      it { is_expected.to eq(entries) }
    end

    context 'when there are multiple entries' do
      let(:entries) do
        [
          instance_double(BTree::Entry, key: 11),
          instance_double(BTree::Entry, key: 13)
        ]
      end

      it { is_expected.to eq([entries.first]) }
    end

    context 'when there are multiple matching entries' do
      let(:entries) do
        [
          instance_double(BTree::Entry, key: 11),
          instance_double(BTree::Entry, key: 11)
        ]
      end

      it { is_expected.to eq(entries) }
    end

    it 'calls #find on the entries' do
      expect(entries).to receive(:find_all)
      leaf_node.find(key)
    end
  end
end
