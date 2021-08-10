class MerchantDiscountsController < ApplicationController
  def create
    @merchant = Merchant.find(params[:merchant_id])
    Discount.create!(discount_params)

    redirect_to merchant_discounts_path(@merchant)
  end

  def destroy
    @merchant = Merchant.find(params[:merchant_id])
    Discount.find(params[:id]).delete

    redirect_to merchant_discounts_path(@merchant)
  end

  def edit
    @merchant = Merchant.find(params[:merchant_id])
    @discount = Discount.find(params[:id])
  end

  def index
    @merchant = Merchant.find(params[:merchant_id])
  end

  def new
    @merchant = Merchant.find(params[:merchant_id])
    @discount = Discount.new
  end

  def show
    @merchant = Merchant.find(params[:merchant_id])
    @discount = Discount.find(params[:id])
  end

  def update
    @merchant = Merchant.find(params[:merchant_id])
    @discount = Discount.find(params[:id])
    @discount.update!(discount_params)

    redirect_to merchant_discount_path(@merchant.id, @discount.id)
  end

  private

  def discount_params
    params.require(:discount).permit(:quantity, :discount, :merchant_id)
  end
end

private

def api_next_holidays
  json = NagerService.new.next_holidays
  array = json.map do |holiday|
    Holiday.new(holiday)
  end
  array.first(3)
end
