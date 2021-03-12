json.code    response.status
json.message 'data loaded successfully'
json.data @categories do |category|
    json.id category.id
    json.name category.name
end