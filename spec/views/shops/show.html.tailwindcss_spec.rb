require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    assign(:shop, Shop.create!(
      name: "Name",
      shop_owner: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
