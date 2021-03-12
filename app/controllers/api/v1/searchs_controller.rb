class Api::V1::SearchsController < ApplicationController

    
    def index
        ##** Si no hay parametro de busqueda que muestre el error.
        if params[:query].blank?
            render :json => { :error => 'No parameter for search' }, :status => 422 if @products.nil?
        else
            ##** Consulta sql para obtener todos los productos que contengan los parametros enviados (nombre, precio).
            @products = Product.where('name LIKE :search OR price LIKE :search',
                search: "%#{params[:query]}%")
        end
        
    end
end