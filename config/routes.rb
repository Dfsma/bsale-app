Rails.application.routes.draw do
  
  # Rutas para la Api
  resources :products
  resources :categories
  

  ##** todo: intentar que el paramentro category_id solo sea "id" **##
  #resources :categories do
  #  resources :products,  only: :index
  #end
 
  

end
