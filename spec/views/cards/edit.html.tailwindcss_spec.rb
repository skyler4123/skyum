require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  let(:card) {
    Card.create!(
      qr_code: "MyString",
      branch: nil,
      status: 1,
      amount: "9.99"
    )
  }

  before(:each) do
    assign(:card, card)
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(card), "post" do

      assert_select "input[name=?]", "card[qr_code]"

      assert_select "input[name=?]", "card[branch_id]"

      assert_select "input[name=?]", "card[status]"

      assert_select "input[name=?]", "card[amount]"
    end
  end
end
