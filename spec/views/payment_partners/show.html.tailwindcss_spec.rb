require 'rails_helper'

RSpec.describe "payment_partners/show", type: :view do
  before(:each) do
    assign(:payment_partner, PaymentPartner.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
