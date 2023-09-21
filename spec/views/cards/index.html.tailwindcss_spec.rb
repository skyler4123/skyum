require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        qr_code: "Qr Code",
        branch: nil,
        status: 2,
        amount: "9.99"
      ),
      Card.create!(
        qr_code: "Qr Code",
        branch: nil,
        status: 2,
        amount: "9.99"
      )
    ])
  end

  it "renders a list of cards" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Qr Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
