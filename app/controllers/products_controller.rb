class ProductsController < ApplicationController
   

    def index
        

         
            
        
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

    
end
