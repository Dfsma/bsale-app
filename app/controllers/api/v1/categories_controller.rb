class Api::V1::CategoriesController < ApplicationController
   
    ## Obtener todos los productos y validar si estos existen.
    ## Caso contrario enviar la respuesta http apropiada.
    def index
        @categories = Category.all

        if @categories
            @categories
        else
            render :json => { :error => 'categories not found' }, :status => 422 if @categories.nil?
        end
        
        
    end

    def show
        @category = Category.find(params[:id])
        if @category
            @products = Product.where(Category: @category.id)
        else
            render :json => { :error => 'category id not found' }, :status => 422 if @category.nil?
        end
    end

    
end