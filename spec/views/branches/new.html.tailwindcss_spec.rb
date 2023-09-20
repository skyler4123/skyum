require 'rails_helper'

RSpec.describe "branches/new", type: :view do
  before(:each) do
    assign(:branch, Branch.new(
      name: "MyString",
      established: 1,
      nationality: "MyString",
      is_global_company: false,
      status: 1
    ))
  end

  it "renders new branch form" do
    render

    assert_select "form[action=?][method=?]", branches_path, "post" do

      assert_select "input[name=?]", "branch[name]"

      assert_select "input[name=?]", "branch[established]"

      assert_select "input[name=?]", "branch[nationality]"

      assert_select "input[name=?]", "branch[is_global_company]"

      assert_select "input[name=?]", "branch[status]"
    end
  end
end
