require 'rails_helper'

RSpec.describe 'the merchant discounts index' do

  describe 'display' do
    it 'shows merchant and discounts' do
      visit merchant_discounts_path(@merchant1.id)

      expect(page).to have_content(@merchant1.name)
      expect(page).to have_content(@discount1.quantity)
      expect(page).to have_content(@discount1.discount)
    end

    it 'has clickable links/buttons' do
      visit merchant_discounts_path(@merchant1.id)

      expect(page).to have_button('New Discount')
      expect(page).to have_button('View Discount')
      expect(page).to have_button('Delete Discount')
    end
  end

  describe 'actions' do
    it 'can delete a discount' do
      visit merchant_discounts_path(@merchant1.id)

      expect(page).to have_content(@discount1.quantity)
      expect(page).to have_content(@discount1.discount)

      first(:button, 'Delete Discount').click

      expect(current_path).to eq(merchant_discounts_path(@merchant1.id))
      expect(page).to_not have_content(@discount1.quantity)
    end
  end
end
