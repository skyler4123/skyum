require 'rails_helper'

RSpec.describe "payment_partners/new", type: :view do
  before(:each) do
    assign(:payment_partner, PaymentPartner.new(
      name: "MyString"
    ))
  end

  it "renders new payment_partner form" do
    render

    assert_select "form[action=?][method=?]", payment_partners_path, "post" do

      assert_select "input[name=?]", "payment_partner[name]"
    end
  end
end
