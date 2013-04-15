 class CartsController < ApplicationController
	include UsersHelper
	before_filter :signed_in_user, 	only: [:index, :edit, :update, :destroy, :new]



	def show
	

	end

	def index
		
	end


  	def new

  	end

  	def mycarts
  	end

  	def add_to_carts
  		hash = session[:carts]
  		binding.pry
    	if (hash.has_key?(:"#{params[:id]}"))
      		hash[:"#{params[:id]}"] += 1
      		binding.pry
    	else
      		hash[:"#{params[:id]}"] = 1
      		binding.pry
    	end
    	
    	session[:carts] = hash
      binding.pry
    	redirect_to mycarts_path
  	end

  	def create

  	end

	def edit

	end

	def update

	end


	def destroy
		session[:carts] = {}
	
		redirect_to mycarts_path
  	end

 

end