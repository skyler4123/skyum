require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      total_amount: "9.99",
      gift_card: nil,
      remain_amount: "MyString",
      order: nil,
      status: 1,
      is_cod_payment: false,
      payment_partner: nil
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[total_amount]"

      assert_select "input[name=?]", "payment[gift_card_id]"

      assert_select "input[name=?]", "payment[remain_amount]"

      assert_select "input[name=?]", "payment[order_id]"

      assert_select "input[name=?]", "payment[status]"

      assert_select "input[name=?]", "payment[is_cod_payment]"

      assert_select "input[name=?]", "payment[payment_partner_id]"
    end
  end
end
