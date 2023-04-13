require 'rails_helper'

RSpec.describe "admin/inspections/index", type: :view do
  before(:each) do
    assign(:inspections, [
      Inspection.create!(
        code: 2,
        motive_apprehension: "Motive Apprehension",
        address_full: "Address Full",
        latitude: "9.99",
        longitude: "9.99",
        neighborhood: "Neighborhood",
        observations: "MyText",
        situation: 3,
        status: false,
        user: nil
      ),
      Inspection.create!(
        code: 2,
        motive_apprehension: "Motive Apprehension",
        address_full: "Address Full",
        latitude: "9.99",
        longitude: "9.99",
        neighborhood: "Neighborhood",
        observations: "MyText",
        situation: 3,
        status: false,
        user: nil
      )
    ])
  end

  it "renders a list of admin/inspections" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Motive Apprehension".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address Full".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Neighborhood".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
