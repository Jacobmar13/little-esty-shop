# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Discount.destroy_all

@discount1 = Discount.create!(quantity: 25, discount: 5, merchant_id: 1)
@discount2 = Discount.create!(quantity: 50, discount: 10, merchant_id: 1)
@discount3 = Discount.create!(quantity: 100, discount: 15, merchant_id: 1)
@discount4 = Discount.create!(quantity: 200, discount: 20, merchant_id: 1)

@discount5 = Discount.create!(quantity: 35, discount: 5, merchant_id: 2)
@discount6 = Discount.create!(quantity: 70, discount: 10, merchant_id: 2)
@discount7 = Discount.create!(quantity: 140, discount: 15, merchant_id: 2)
@discount8 = Discount.create!(quantity: 280, discount: 20, merchant_id: 2)
