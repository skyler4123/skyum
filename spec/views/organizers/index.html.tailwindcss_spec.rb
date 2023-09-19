require 'rails_helper'

RSpec.describe "organizers/index", type: :view do
  before(:each) do
    assign(:organizers, [
      Organizer.create!(
        email: "Email"
      ),
      Organizer.create!(
        email: "Email"
      )
    ])
  end

  it "renders a list of organizers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
