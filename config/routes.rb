Rails.application.routes.draw do
  
  # Rutas para la Api


  
  resources :categories do
    resources :products, param: :id, only: :index
  end
 
  resources :products

end
