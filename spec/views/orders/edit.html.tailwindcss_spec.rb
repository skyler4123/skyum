require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  let(:order) {
    Order.create!(
      customer: nil,
      status: 1
    )
  }

  before(:each) do
    assign(:order, order)
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(order), "post" do

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[status]"
    end
  end
end
