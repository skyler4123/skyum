require 'rails_helper'

RSpec.describe "shops/index", type: :view do
  before(:each) do
    assign(:shops, [
      Shop.create!(
        name: "Name",
        shop_owner: nil
      ),
      Shop.create!(
        name: "Name",
        shop_owner: nil
      )
    ])
  end

  it "renders a list of shops" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
