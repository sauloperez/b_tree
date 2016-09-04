require 'spec_helper'

module BTree
  describe BranchNode do
    let(:branch_node) { described_class.new(entries) }

    describe '#find' do
      context 'when the entry key is equal to the search key' do
        let(:search_key) { 57 }

        let(:entries) do
          [
            double(:entry, key: 39, node: instance_double(BranchNode)),
            double(:entry, key: search_key, node: instance_double(BranchNode)),
            double(:entry, key: 98, node: instance_double(BranchNode))
          ]
        end

        it 'calls #find to each entries' do
          expect(entries[0]).not_to receive(:find).with(search_key)
          expect(entries[1]).to receive(:find).with(search_key)
          expect(entries[2]).not_to receive(:find).with(search_key)

          branch_node.find(search_key)
        end
      end
    end

    context 'when the entry key is bigger than the search key' do
      let(:search_key) { 57 }

      let(:entries) do
        [
          double(:entry, key: 39, node: instance_double(BranchNode)),
          double(:entry, key: 83, node: instance_double(BranchNode)),
          double(:entry, key: 98, node: instance_double(BranchNode))
        ]
      end

      before do
        allow(entries[0])
          .to receive(:find).with(search_key).and_return(1925)

        allow(entries[1])
          .to receive(:find).with(search_key).and_return(1925)
      end

      it 'calls #find to each entries' do
        expect(entries[0]).not_to receive(:find).with(search_key)
        expect(entries[1]).to receive(:find).with(search_key)
        expect(entries[2]).not_to receive(:find).with(search_key)

        branch_node.find(search_key)
      end
    end
  end
end
