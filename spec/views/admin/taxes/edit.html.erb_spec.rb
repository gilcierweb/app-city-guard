require 'rails_helper'

RSpec.describe "admin/taxes/edit", type: :view do
  let(:admin_tax) {
    Tax.create!(
      amount: "9.99",
      kind: 1,
      status: false,
      user: nil
    )
  }

  before(:each) do
    assign(:admin_tax, admin_tax)
  end

  it "renders the edit admin_tax form" do
    render

    assert_select "form[action=?][method=?]", admin_tax_path(admin_tax), "post" do

      assert_select "input[name=?]", "admin_tax[amount]"

      assert_select "input[name=?]", "admin_tax[kind]"

      assert_select "input[name=?]", "admin_tax[status]"

      assert_select "input[name=?]", "admin_tax[user_id]"
    end
  end
end
