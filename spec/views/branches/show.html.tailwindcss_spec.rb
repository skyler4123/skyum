require 'rails_helper'

RSpec.describe "branches/show", type: :view do
  before(:each) do
    assign(:branch, Branch.create!(
      name: "Name",
      established: 2,
      nationality: "Nationality",
      is_global_company: false,
      status: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nationality/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
  end
end
