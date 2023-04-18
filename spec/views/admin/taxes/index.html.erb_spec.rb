require 'rails_helper'

RSpec.describe "admin/taxes/index", type: :view do
  before(:each) do
    assign(:taxes, [
      Tax.create!(
        amount: "9.99",
        kind: 2,
        status: false,
        user: nil
      ),
      Tax.create!(
        amount: "9.99",
        kind: 2,
        status: false,
        user: nil
      )
    ])
  end

  it "renders a list of admin/taxes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
