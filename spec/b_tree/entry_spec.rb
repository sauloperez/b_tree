require 'spec_helper'

describe BTree::Entry do
  let(:key) { 11 }
  let(:row_id) { 'ab98kb0' }
  let(:entry) { described_class.new(key, row_id) }

  describe '#key' do
    subject { entry.key }
    it { is_expected.to eq(key) }
  end

  describe '#row_id' do
    subject { entry.row_id }
    it { is_expected.to eq(row_id) }
  end
end
