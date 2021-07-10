class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :delivery_adress
      t.string :delivery_name
      t.string :delivery_code
      t.integer :total_payment
      t.integer :shipping_cost
      t.integer :order_status
      t.integer :payment_method

      t.timestamps
    end
  end
end
