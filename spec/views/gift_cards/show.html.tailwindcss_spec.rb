require 'rails_helper'

RSpec.describe "gift_cards/show", type: :view do
  before(:each) do
    assign(:gift_card, GiftCard.create!(
      qr_code: "Qr Code",
      shop: nil,
      status: 2,
      amount: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Qr Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
