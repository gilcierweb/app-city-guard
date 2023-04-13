require 'rails_helper'

RSpec.describe "admin/profiles/new", type: :view do
  before(:each) do
    assign(:admin_profile, Profile.new(
      first_name: "MyString",
      last_name: "MyString",
      full_name: "MyString",
      nickname: "MyString",
      cpf: 1,
      number: 1,
      bio: "MyText",
      avatar: "MyString",
      status: false,
      user: nil
    ))
  end

  it "renders new admin_profile form" do
    render

    assert_select "form[action=?][method=?]", admin_profiles_path, "post" do

      assert_select "input[name=?]", "admin_profile[first_name]"

      assert_select "input[name=?]", "admin_profile[last_name]"

      assert_select "input[name=?]", "admin_profile[full_name]"

      assert_select "input[name=?]", "admin_profile[nickname]"

      assert_select "input[name=?]", "admin_profile[cpf]"

      assert_select "input[name=?]", "admin_profile[number]"

      assert_select "textarea[name=?]", "admin_profile[bio]"

      assert_select "input[name=?]", "admin_profile[avatar]"

      assert_select "input[name=?]", "admin_profile[status]"

      assert_select "input[name=?]", "admin_profile[user_id]"
    end
  end
end
