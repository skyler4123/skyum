require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      unit_price: "9.99",
      branch: nil,
      shop: nil,
      category: nil,
      status: 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[unit_price]"

      assert_select "input[name=?]", "product[branch_id]"

      assert_select "input[name=?]", "product[shop_id]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[status]"
    end
  end
end
