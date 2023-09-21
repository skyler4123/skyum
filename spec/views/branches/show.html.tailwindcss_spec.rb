require 'rails_helper'

RSpec.describe "branches/show", type: :view do
  before(:each) do
    assign(:branch, Branch.create!(
      name: "Name",
      nationality: "Nationality"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Nationality/)
  end
end
