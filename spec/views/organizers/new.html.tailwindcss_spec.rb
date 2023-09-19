require 'rails_helper'

RSpec.describe "organizers/new", type: :view do
  before(:each) do
    assign(:organizer, Organizer.new(
      email: "MyString"
    ))
  end

  it "renders new organizer form" do
    render

    assert_select "form[action=?][method=?]", organizers_path, "post" do

      assert_select "input[name=?]", "organizer[email]"
    end
  end
end
