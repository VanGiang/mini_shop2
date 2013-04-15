class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    @product_orders = ProductOrder.all
  
    @product_orders = ProductOrder.where("order_id = ?",@order.id)
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])
    @order.user_id = current_user.id
    @order.status = "new"
    @order.save

    @products = Product.all
    a = session[:carts]
    @products.each do |product|
    if(a.has_key?(:"#{product.id}"))

    @product_order = ProductOrder.new(params[:product_order])
    @product_order.order_id = @order.id
    @product_order.product_id = product.id
    @product_order.quantity = a[:"#{product.id}"]
    @product_order.save
    end
    end

    respond_to do |format|
      if @product_order.save
        format.html { redirect_to @order, notice: 'Cam on ban da mua hang cua chung toi.' }
        format.json { render json: @order, status: :created, location: @order }
        
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
        
      end
    end

    session[:carts]={}
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
end
