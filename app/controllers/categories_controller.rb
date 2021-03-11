class CategoriesController < ApplicationController
   

    def index
        @categories = Category.all

        if @categories
            @categories
        else
            render :json => { :error => 'categories not found' }, :status => 422 if @categories.nil?
        end
        
        
    end
end