class ProductsController < ApplicationController
  def index
  	@products = Product.where(nil)
  	@products = @products.pertencentes_a_linha(params[:line])

  	@line = Line.find(params[:line])
  	
  	
  	respond_to do |format|
  		format.js
  	end
  end
end
