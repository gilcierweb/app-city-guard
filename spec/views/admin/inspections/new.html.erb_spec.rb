require 'rails_helper'

RSpec.describe "admin/inspections/new", type: :view do
  before(:each) do
    assign(:admin_inspection, Inspection.new(
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
    ))
  end

  it "renders new admin_inspection form" do
    render

    assert_select "form[action=?][method=?]", admin_inspections_path, "post" do

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
