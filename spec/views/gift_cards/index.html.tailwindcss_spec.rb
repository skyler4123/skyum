require 'rails_helper'

RSpec.describe "gift_cards/index", type: :view do
  before(:each) do
    assign(:gift_cards, [
      GiftCard.create!(
        qr_code: "Qr Code",
        shop: nil,
        status: 2,
        amount: 3
      ),
      GiftCard.create!(
        qr_code: "Qr Code",
        shop: nil,
        status: 2,
        amount: 3
      )
    ])
  end

  it "renders a list of gift_cards" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Qr Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
