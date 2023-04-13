require 'rails_helper'

RSpec.describe "admin/profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
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
      ),
      Profile.create!(
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
      )
    ])
  end

  it "renders a list of admin/profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Full Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Nickname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Avatar".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
