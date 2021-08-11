require 'rails_helper'

RSpec.describe 'The merchant discount edit' do
  describe 'display' do
    it 'can be visited' do
      visit edit_merchant_discount_path(@merchant1, @discount1)
    end

    it 'has a form' do
      visit edit_merchant_discount_path(@merchant1, @discount1)

      expect(page).to have_content('Items to qualify:')
      expect(page).to have_content('Percent discount given:')
      expect(page).to have_button('Update Discount')
    end
  end

  describe 'interactable elements' do
    it 'can update discount and go back to discount show page' do
      visit edit_merchant_discount_path(@merchant1, @discount1)

      fill_in('Items to qualify:', with: 500)
      fill_in('Percent discount given:', with: 80)
      click_button('Update Discount')

      expect(current_path).to eq(merchant_discount_path(@merchant1, @discount1))
      expect(page).to have_content(500)
      expect(page).to have_content(80)
    end
  end
end
