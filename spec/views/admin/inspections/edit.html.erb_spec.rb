require 'rails_helper'

RSpec.describe "admin/inspections/edit", type: :view do
  let(:admin_inspection) {
    Inspection.create!(
      code: 1,
      motive_apprehension: "MyString",
      address_full: "MyString",
      latitude: "9.99",
      longitude: "9.99",
      neighborhood: "MyString",
      observations: "MyText",
      situation: 1,
      status: false,
      user: nil
    )
  }

  before(:each) do
    assign(:admin_inspection, admin_inspection)
  end

  it "renders the edit admin_inspection form" do
    render

    assert_select "form[action=?][method=?]", admin_inspection_path(admin_inspection), "post" do

      assert_select "input[name=?]", "admin_inspection[code]"

      assert_select "input[name=?]", "admin_inspection[motive_apprehension]"

      assert_select "input[name=?]", "admin_inspection[address_full]"

      assert_select "input[name=?]", "admin_inspection[latitude]"

      assert_select "input[name=?]", "admin_inspection[longitude]"

      assert_select "input[name=?]", "admin_inspection[neighborhood]"

      assert_select "textarea[name=?]", "admin_inspection[observations]"

      assert_select "input[name=?]", "admin_inspection[situation]"

      assert_select "input[name=?]", "admin_inspection[status]"

      assert_select "input[name=?]", "admin_inspection[user_id]"
    end
  end
end
