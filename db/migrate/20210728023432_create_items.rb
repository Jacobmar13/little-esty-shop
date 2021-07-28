class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :descripion
      t.integer :unit_price
      t.references :merchant, foreign_key: true

      t.timestamps
    end
  end
end