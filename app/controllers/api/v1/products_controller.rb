class Api::V1::ProductsController < ApplicationController

    


    def index
      ##** Obtener todos los productos y validar si estos existen.
      ##** Caso contrario enviar la respuesta http apropiada.  
      @products = Product.all
      if @products
        @products
      else
        render :json => { :error => 'products not found' }, :status => 422 if @products.nil?
      end
       
      ##** todo: Intentar arreglar el parametro que se envia a la ruta **##
      #if params[:id]
        #@category = Category.find(params[:id])
        #@products = Product.where(Category: @category.id)
      #end   
    end
    
    
    def paginate
      ##** Utilizo la gema will_paginate para traer 4 productos por pagina.
      @products = Product.paginate(page: params[:page], per_page: 4) #will_paginate
     
    end
end
