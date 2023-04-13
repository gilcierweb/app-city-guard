require 'rails_helper'

RSpec.describe "admin/inspections/show", type: :view do
  before(:each) do
    assign(:admin_inspection, Inspection.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Motive Apprehension/)
    expect(rendered).to match(/Address Full/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Neighborhood/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
