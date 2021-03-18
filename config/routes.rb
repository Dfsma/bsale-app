Rails.application.routes.draw do
  
  
  

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
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
