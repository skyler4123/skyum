require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    assign(:customer, Customer.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
