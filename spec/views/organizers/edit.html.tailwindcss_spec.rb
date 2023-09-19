require 'rails_helper'

RSpec.describe "organizers/edit", type: :view do
  let(:organizer) {
    Organizer.create!(
      email: "MyString"
    )
  }

  before(:each) do
    assign(:organizer, organizer)
  end

  it "renders the edit organizer form" do
    render

    assert_select "form[action=?][method=?]", organizer_path(organizer), "post" do

      assert_select "input[name=?]", "organizer[email]"
    end
  end
end
