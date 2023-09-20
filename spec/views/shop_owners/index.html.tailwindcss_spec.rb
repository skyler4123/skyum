require 'rails_helper'

RSpec.describe "shop_owners/index", type: :view do
  before(:each) do
    assign(:shop_owners, [
      ShopOwner.create!(
        user: nil
      ),
      ShopOwner.create!(
        user: nil
      )
    ])
  end

  it "renders a list of shop_owners" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
