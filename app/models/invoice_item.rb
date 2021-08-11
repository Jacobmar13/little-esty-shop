class InvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :invoice

  enum status: [:pending, :packaged, :shipped]

  def self.locate(invoice_id, item_id)
    where('invoice_id = ?', invoice_id).where('item_id = ?', item_id).first
  end

  def total_revenue
    quantity * unit_price
  end

  def discount_revenue
    Discount
      .where('discounts.quantity <= ? AND discounts.merchant_id = ?', quantity, item.merchant.id)
      .order(discount: :DESC)
      .limit(1)
      .first
  end
end
