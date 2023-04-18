require 'rails_helper'

RSpec.describe "admin/taxes/new", type: :view do
  before(:each) do
    assign(:admin_tax, Tax.new(
      amount: "9.99",
      kind: 1,
      status: false,
      user: nil
    ))
  end

  it "renders new admin_tax form" do
    render

    assert_select "form[action=?][method=?]", admin_taxes_path, "post" do

      assert_select "input[name=?]", "admin_tax[amount]"

      assert_select "input[name=?]", "admin_tax[kind]"

      assert_select "input[name=?]", "admin_tax[status]"

      assert_select "input[name=?]", "admin_tax[user_id]"
    end
  end
end
