# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  avatar     :string
#  bio        :text
#  birthday   :date
#  cpf        :bigint
#  first_name :string
#  full_name  :string
#  last_name  :string
#  nickname   :string
#  number     :integer
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    full_name { "MyString" }
    nickname { "MyString" }
    cpf { 1 }
    number { 1 }
    bio { "MyText" }
    birthday { "2023-04-13" }
    avatar { "MyString" }
    status { false }
    user { nil }
  end
end
