require 'rails_helper'

RSpec.describe "organizers/show", type: :view do
  before(:each) do
    assign(:organizer, Organizer.create!(
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
  end
end
