require 'rails_helper'

RSpec.describe "admin/taxes/show", type: :view do
  before(:each) do
    assign(:admin_tax, Tax.create!(
      amount: "9.99",
      kind: 2,
      status: false,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
