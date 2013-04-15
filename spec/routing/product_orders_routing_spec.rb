require "spec_helper"

describe ProductOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/product_orders").should route_to("product_orders#index")
    end

    it "routes to #new" do
      get("/product_orders/new").should route_to("product_orders#new")
    end

    it "routes to #show" do
      get("/product_orders/1").should route_to("product_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_orders/1/edit").should route_to("product_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_orders").should route_to("product_orders#create")
    end

    it "routes to #update" do
      put("/product_orders/1").should route_to("product_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_orders/1").should route_to("product_orders#destroy", :id => "1")
    end

  end
end
