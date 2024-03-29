require 'spec_helper'

describe "product_orders/index" do
  before(:each) do
    assign(:product_orders, [
      stub_model(ProductOrder,
        :order_id => 1,
        :product_id => 2,
        :quantity => 3
      ),
      stub_model(ProductOrder,
        :order_id => 1,
        :product_id => 2,
        :quantity => 3
      )
    ])
  end

  it "renders a list of product_orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
