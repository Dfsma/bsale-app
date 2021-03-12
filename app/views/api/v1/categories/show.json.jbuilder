json.code    response.status
json.message 'data loaded successfully'
json.category @category

json.data @products do |product| 
    json.id product.id
    json.name product.name
    json.url_image product.url_image
    json.price product.price
    json.discount product.discount
    json.category product.category
    
end
    
