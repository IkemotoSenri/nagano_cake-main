class ChangeDatatypeIsActiveOfItems < ActiveRecord::Migration[5.2]
  def chang
     change_column :items, :is_active, :boolean, default: true, null: false
  end
end
