class ProductsController < ApplicationController
   

    def index
        

        if params[:category]

            @category = Category.includes(:products).find(params[:id])
            @products = @category.products

            
            
        ##else
            #@products = Product.all
            #if @products
              ##  @products
            #else
              ##  render :json => { :error => 'products not found' }, :status => 422 if @products.nil?
            ##end
        end
    end
end
