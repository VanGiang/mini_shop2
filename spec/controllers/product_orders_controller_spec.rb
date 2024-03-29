require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProductOrdersController do

  # This should return the minimal set of attributes required to create a valid
  # ProductOrder. As you add validations to ProductOrder, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProductOrdersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all product_orders as @product_orders" do
      product_order = ProductOrder.create! valid_attributes
      get :index, {}, valid_session
      assigns(:product_orders).should eq([product_order])
    end
  end

  describe "GET show" do
    it "assigns the requested product_order as @product_order" do
      product_order = ProductOrder.create! valid_attributes
      get :show, {:id => product_order.to_param}, valid_session
      assigns(:product_order).should eq(product_order)
    end
  end

  describe "GET new" do
    it "assigns a new product_order as @product_order" do
      get :new, {}, valid_session
      assigns(:product_order).should be_a_new(ProductOrder)
    end
  end

  describe "GET edit" do
    it "assigns the requested product_order as @product_order" do
      product_order = ProductOrder.create! valid_attributes
      get :edit, {:id => product_order.to_param}, valid_session
      assigns(:product_order).should eq(product_order)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProductOrder" do
        expect {
          post :create, {:product_order => valid_attributes}, valid_session
        }.to change(ProductOrder, :count).by(1)
      end

      it "assigns a newly created product_order as @product_order" do
        post :create, {:product_order => valid_attributes}, valid_session
        assigns(:product_order).should be_a(ProductOrder)
        assigns(:product_order).should be_persisted
      end

      it "redirects to the created product_order" do
        post :create, {:product_order => valid_attributes}, valid_session
        response.should redirect_to(ProductOrder.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved product_order as @product_order" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProductOrder.any_instance.stub(:save).and_return(false)
        post :create, {:product_order => {}}, valid_session
        assigns(:product_order).should be_a_new(ProductOrder)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProductOrder.any_instance.stub(:save).and_return(false)
        post :create, {:product_order => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested product_order" do
        product_order = ProductOrder.create! valid_attributes
        # Assuming there are no other product_orders in the database, this
        # specifies that the ProductOrder created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProductOrder.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => product_order.to_param, :product_order => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested product_order as @product_order" do
        product_order = ProductOrder.create! valid_attributes
        put :update, {:id => product_order.to_param, :product_order => valid_attributes}, valid_session
        assigns(:product_order).should eq(product_order)
      end

      it "redirects to the product_order" do
        product_order = ProductOrder.create! valid_attributes
        put :update, {:id => product_order.to_param, :product_order => valid_attributes}, valid_session
        response.should redirect_to(product_order)
      end
    end

    describe "with invalid params" do
      it "assigns the product_order as @product_order" do
        product_order = ProductOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProductOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => product_order.to_param, :product_order => {}}, valid_session
        assigns(:product_order).should eq(product_order)
      end

      it "re-renders the 'edit' template" do
        product_order = ProductOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProductOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => product_order.to_param, :product_order => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested product_order" do
      product_order = ProductOrder.create! valid_attributes
      expect {
        delete :destroy, {:id => product_order.to_param}, valid_session
      }.to change(ProductOrder, :count).by(-1)
    end

    it "redirects to the product_orders list" do
      product_order = ProductOrder.create! valid_attributes
      delete :destroy, {:id => product_order.to_param}, valid_session
      response.should redirect_to(product_orders_url)
    end
  end

end
