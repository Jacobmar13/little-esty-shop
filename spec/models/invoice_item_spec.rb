require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  describe 'relationships' do
    it { should belong_to(:item) }
    it { should belong_to(:invoice) }
  end

  describe 'enum status' do
    it { should define_enum_for(:status).with_values([:pending, :packaged, :shipped]) }
  end

  # describe 'validations' do
  #   it { should validate_presence_of(:) }
  # end

  # before :each do

  # end

  describe 'class methods' do
    describe '.locate' do
      it 'locates invoice item with invoice and item ids' do
        expected = InvoiceItem.locate(@invoice1.id, @item1.id)

        expect(expected).to eq(@invoice_item1)
      end
    end
  end

  describe 'instance methods' do
    describe '#discount_revenue' do
      it 'gives the discounted revenue for an invoice_item' do
        expect(@invoice_item1.discount_revenue).to eq(@discount3)
      end
    end
  end
end
