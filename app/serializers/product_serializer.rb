class ProductSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :url_image, :price, :discount, :category
  belongs_to :category
end
