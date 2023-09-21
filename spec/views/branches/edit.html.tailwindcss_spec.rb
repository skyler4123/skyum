require 'rails_helper'

RSpec.describe "branches/edit", type: :view do
  let(:branch) {
    Branch.create!(
      name: "MyString",
      nationality: "MyString"
    )
  }

  before(:each) do
    assign(:branch, branch)
  end

  it "renders the edit branch form" do
    render

    assert_select "form[action=?][method=?]", branch_path(branch), "post" do

      assert_select "input[name=?]", "branch[name]"

      assert_select "input[name=?]", "branch[nationality]"
    end
  end
end
