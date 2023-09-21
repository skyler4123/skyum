require 'rails_helper'

RSpec.describe "gift_cards/edit", type: :view do
  let(:gift_card) {
    GiftCard.create!(
      qr_code: "MyString",
      shop: nil,
      status: 1,
      amount: 1
    )
  }

  before(:each) do
    assign(:gift_card, gift_card)
  end

  it "renders the edit gift_card form" do
    render

    assert_select "form[action=?][method=?]", gift_card_path(gift_card), "post" do

      assert_select "input[name=?]", "gift_card[qr_code]"

      assert_select "input[name=?]", "gift_card[shop_id]"

      assert_select "input[name=?]", "gift_card[status]"

      assert_select "input[name=?]", "gift_card[amount]"
    end
  end
end
