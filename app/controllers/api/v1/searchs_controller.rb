class Api::V1::SearchsController < ApplicationController

    ##** Consulta sql para obtener todos los productos que contengan los parametros enviados (nombre, precio).
    def index
        @products = Product.where('name LIKE :search OR price LIKE :search', search: "%#{params[:query]}%")
    end
end