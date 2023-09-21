require 'rails_helper'

RSpec.describe "gift_cards/new", type: :view do
  before(:each) do
    assign(:gift_card, GiftCard.new(
      qr_code: "MyString",
      shop: nil,
      status: 1,
      amount: 1
    ))
  end

  it "renders new gift_card form" do
    render

    assert_select "form[action=?][method=?]", gift_cards_path, "post" do

      assert_select "input[name=?]", "gift_card[qr_code]"

      assert_select "input[name=?]", "gift_card[shop_id]"

      assert_select "input[name=?]", "gift_card[status]"

      assert_select "input[name=?]", "gift_card[amount]"
    end
  end
end
