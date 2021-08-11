require 'rails_helper'

RSpec.describe 'The merchant discount creation' do
  describe 'display' do
    it 'can be visited' do
      visit new_merchant_discount_path(@merchant1)
    end
    it 'has a form' do
      visit new_merchant_discount_path(@merchant1, @discount1)

      expect(page).to have_content('Items to qualify:')
      expect(page).to have_content('Percent discount given:')
      expect(page).to have_button('Create Discount')
    end
  end

  describe 'interactable elements' do
    it 'can create discount and go back to the merchant discount index page' do
      visit merchant_discounts_path(@merchant1)
      click_button('New Discount')

      fill_in('Items to qualify:', with: 500)
      fill_in('Percent discount given:', with: 80)
      click_button('Create Discount')

      expect(current_path).to eq(merchant_discounts_path(@merchant1))
      expect(page).to have_content(500)
      expect(page).to have_content(80)
    end
  end
end
