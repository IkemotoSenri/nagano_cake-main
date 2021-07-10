class DropTableCustomer < ActiveRecord::Migration[5.2]
  def change
    drop_table :customers do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "email"
    t.string "encrypted_password"
    t.string "postal_code"
    t.string "address"
    t.string "telephone_number"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false  
    end
  end
end