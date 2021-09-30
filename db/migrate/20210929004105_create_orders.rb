class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :drink
      t.integer :price
      t.integer :quantity
      t.belongs_to :barista
      t.belongs_to :customer
    end
  end
end
