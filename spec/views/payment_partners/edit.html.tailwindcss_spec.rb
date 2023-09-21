require 'rails_helper'

RSpec.describe "payment_partners/edit", type: :view do
  let(:payment_partner) {
    PaymentPartner.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:payment_partner, payment_partner)
  end

  it "renders the edit payment_partner form" do
    render

    assert_select "form[action=?][method=?]", payment_partner_path(payment_partner), "post" do

      assert_select "input[name=?]", "payment_partner[name]"
    end
  end
end
