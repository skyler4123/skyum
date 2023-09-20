require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      unit_price: "9.99",
      branch: nil,
      shop: nil,
      category: nil,
      status: 1
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[unit_price]"

      assert_select "input[name=?]", "product[branch_id]"

      assert_select "input[name=?]", "product[shop_id]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[status]"
    end
  end
end
