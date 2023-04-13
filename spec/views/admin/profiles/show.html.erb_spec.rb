require 'rails_helper'

RSpec.describe "admin/profiles/show", type: :view do
  before(:each) do
    assign(:admin_profile, Profile.create!(
      first_name: "First Name",
      last_name: "Last Name",
      full_name: "Full Name",
      nickname: "Nickname",
      cpf: 2,
      number: 3,
      bio: "MyText",
      avatar: "Avatar",
      status: false,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
