class ProductsController < ApplicationController
   

    def index
        if params[:category_id]
            @category = Category.includes(:products).find(params[:category_id])
            @products = @category.products
            
        else
            products = Product.all
            render json: products
        end
    end
end
