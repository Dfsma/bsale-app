class Category < ApplicationRecord
    has_many :products, class_name: "Product", foreign_key: "id"
end