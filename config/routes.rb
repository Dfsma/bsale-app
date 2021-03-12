Rails.application.routes.draw do
  
  # Rutas para la Api

  namespace :api do
    namespace :v1 do
      resources :products do 
        get 'page/:page', action: :paginate, on: :collection
      end
      resources :categories
      resources :searchs 
    end
  end

  

  ##** todo: intentar que el paramentro "category_id" solo sea "id" **##
  #resources :categories do
  #  resources :products,  only: :index
  #end
 
  

end
