require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      qr_code: "MyString",
      branch: nil,
      status: 1,
      amount: "9.99"
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input[name=?]", "card[qr_code]"

      assert_select "input[name=?]", "card[branch_id]"

      assert_select "input[name=?]", "card[status]"

      assert_select "input[name=?]", "card[amount]"
    end
  end
end
