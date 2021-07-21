class Item < ApplicationRecord
    attachment :image
    def add_tax_sales_price
    (self.price * 1.10).round
    end
end
