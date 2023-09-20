require 'rails_helper'

RSpec.describe "shop_owners/edit", type: :view do
  let(:shop_owner) {
    ShopOwner.create!(
      user: nil
    )
  }

  before(:each) do
    assign(:shop_owner, shop_owner)
  end

  it "renders the edit shop_owner form" do
    render

    assert_select "form[action=?][method=?]", shop_owner_path(shop_owner), "post" do

      assert_select "input[name=?]", "shop_owner[user_id]"
    end
  end
end
