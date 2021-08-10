require 'rails_helper'

RSpec.describe 'the merchant discounts index' do

  describe 'display' do
    it 'shows header text' do
      visit merchant_discounts_path(@merchant1.id)
    end
  end
end
