class Product < ApplicationRecord
    
    belongs_to :category, class_name: "Category", foreign_key: "category"

   

end