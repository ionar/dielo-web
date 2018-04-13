class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	respond_to do |format|
  		format.js
  	end
  end
end
