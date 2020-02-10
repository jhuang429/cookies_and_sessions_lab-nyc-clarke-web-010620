class ProductsController < ActionController::Base

    def index
        @cart =  session[:cart]
    end

    def add
        @item = params[:product]

        cart = session[:cart] || []
        cart << @item

        session[:cart] =  cart
        redirect_to "/products"
    end

    def new
    
    end



end