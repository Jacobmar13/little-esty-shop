# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Discount.destroy_all

@discount1 = Discount.create!(quantity: 5, discount: 10, merchant_id: 1)
@discount2 = Discount.create!(quantity: 10, discount: 20, merchant_id: 1)

@discount3 = Discount.create!(quantity: 5, discount: 10, merchant_id: 2)
@discount4 = Discount.create!(quantity: 10, discount: 15, merchant_id: 2)

@discount5 = Discount.create!(quantity: 5, discount: 5, merchant_id: 3)
@discount6 = Discount.create!(quantity: 10, discount: 20, merchant_id: 3)

@discount7 = Discount.create!(quantity: 5, discount: 8, merchant_id: 4)
@discount8 = Discount.create!(quantity: 10, discount: 13, merchant_id: 4)

@discount9 = Discount.create!(quantity: 5, discount: 14, merchant_id: 5)
@discount10 = Discount.create!(quantity: 10, discount: 30, merchant_id: 5)

@discount11 = Discount.create!(quantity: 5, discount: 5, merchant_id: 6)
@discount12 = Discount.create!(quantity: 10, discount: 10, merchant_id: 6)

@discount13 = Discount.create!(quantity: 5, discount: 5, merchant_id: 7)
@discount14 = Discount.create!(quantity: 10, discount: 10, merchant_id: 7)

@discount15 = Discount.create!(quantity: 5, discount: 5, merchant_id: 8)
@discount16 = Discount.create!(quantity: 10, discount: 10, merchant_id: 8)

@discount17 = Discount.create!(quantity: 5, discount: 5, merchant_id: 9)
@discount18 = Discount.create!(quantity: 10, discount: 10, merchant_id: 9)

@discount19 = Discount.create!(quantity: 5, discount: 5, merchant_id: 10)
@discount20 = Discount.create!(quantity: 10, discount: 10, merchant_id: 10)
