require 'rails_helper'

RSpec.describe "order_products/show", type: :view do
  before(:each) do
    assign(:order_product, OrderProduct.create!(
      order: nil,
      product: nil,
      status: 2,
      unit_price: "9.99",
      quantity: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
  end
end
