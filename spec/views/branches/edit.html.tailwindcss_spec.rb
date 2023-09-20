require 'rails_helper'

RSpec.describe "branches/edit", type: :view do
  let(:branch) {
    Branch.create!(
      name: "MyString",
      established: 1,
      nationality: "MyString",
      is_global_company: false,
      status: 1
    )
  }

  before(:each) do
    assign(:branch, branch)
  end

  it "renders the edit branch form" do
    render

    assert_select "form[action=?][method=?]", branch_path(branch), "post" do

      assert_select "input[name=?]", "branch[name]"

      assert_select "input[name=?]", "branch[established]"

      assert_select "input[name=?]", "branch[nationality]"

      assert_select "input[name=?]", "branch[is_global_company]"

      assert_select "input[name=?]", "branch[status]"
    end
  end
end
