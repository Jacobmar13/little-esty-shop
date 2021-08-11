require 'rails_helper'

RSpec.describe 'The merchant discount show' do
  describe 'display' do
    it 'can be visited' do
      visit merchant_discount_path(@merchant1, @discount1)
    end

    it 'displays discount attributes' do
      visit merchant_discount_path(@merchant1, @discount1)

      expect(page).to have_content("#{@discount1.quantity} items or more")
      expect(page).to have_content("#{@discount1.discount}%")
    end
  end
end
