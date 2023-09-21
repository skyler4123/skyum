require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        total_amount: "9.99",
        gift_card: nil,
        remain_amount: "Remain Amount",
        order: nil,
        status: 2,
        is_cod_payment: false,
        payment_partner: nil
      ),
      Payment.create!(
        total_amount: "9.99",
        gift_card: nil,
        remain_amount: "Remain Amount",
        order: nil,
        status: 2,
        is_cod_payment: false,
        payment_partner: nil
      )
    ])
  end

  it "renders a list of payments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Remain Amount".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
