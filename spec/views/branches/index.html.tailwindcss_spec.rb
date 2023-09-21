require 'rails_helper'

RSpec.describe "branches/index", type: :view do
  before(:each) do
    assign(:branches, [
      Branch.create!(
        name: "Name",
        nationality: "Nationality"
      ),
      Branch.create!(
        name: "Name",
        nationality: "Nationality"
      )
    ])
  end

  it "renders a list of branches" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Nationality".to_s), count: 2
  end
end
