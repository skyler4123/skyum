require 'rails_helper'

RSpec.describe "order_products/index", type: :view do
  before(:each) do
    assign(:order_products, [
      OrderProduct.create!(
        order: nil,
        product: nil,
        status: 2,
        unit_price: "9.99",
        quantity: 3
      ),
      OrderProduct.create!(
        order: nil,
        product: nil,
        status: 2,
        unit_price: "9.99",
        quantity: 3
      )
    ])
  end

  it "renders a list of order_products" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
