class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :product, foreign_key: true
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
