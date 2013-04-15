require 'spec_helper'

describe "product_orders/edit" do
  before(:each) do
    @product_order = assign(:product_order, stub_model(ProductOrder,
      :order_id => 1,
      :product_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit product_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_orders_path(@product_order), :method => "post" do
      assert_select "input#product_order_order_id", :name => "product_order[order_id]"
      assert_select "input#product_order_product_id", :name => "product_order[product_id]"
      assert_select "input#product_order_quantity", :name => "product_order[quantity]"
    end
  end
end
