require 'rails_helper'

RSpec.describe "shop_owners/show", type: :view do
  before(:each) do
    assign(:shop_owner, ShopOwner.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
