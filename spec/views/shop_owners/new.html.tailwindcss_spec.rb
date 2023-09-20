require 'rails_helper'

RSpec.describe "shop_owners/new", type: :view do
  before(:each) do
    assign(:shop_owner, ShopOwner.new(
      user: nil
    ))
  end

  it "renders new shop_owner form" do
    render

    assert_select "form[action=?][method=?]", shop_owners_path, "post" do

      assert_select "input[name=?]", "shop_owner[user_id]"
    end
  end
end
