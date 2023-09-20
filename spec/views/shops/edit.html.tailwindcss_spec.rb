require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  let(:shop) {
    Shop.create!(
      name: "MyString",
      shop_owner: nil
    )
  }

  before(:each) do
    assign(:shop, shop)
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(shop), "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[shop_owner_id]"
    end
  end
end
