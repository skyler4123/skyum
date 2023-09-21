require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  let(:payment) {
    Payment.create!(
      total_amount: "9.99",
      gift_card: nil,
      remain_amount: "MyString",
      order: nil,
      status: 1,
      is_cod_payment: false,
      payment_partner: nil
    )
  }

  before(:each) do
    assign(:payment, payment)
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(payment), "post" do

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
