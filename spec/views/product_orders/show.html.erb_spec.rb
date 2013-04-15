require 'spec_helper'

describe "product_orders/show" do
  before(:each) do
    @product_order = assign(:product_order, stub_model(ProductOrder,
      :order_id => 1,
      :product_id => 2,
      :quantity => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
