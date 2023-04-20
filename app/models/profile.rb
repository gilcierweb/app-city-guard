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
class Profile < ApplicationRecord
  belongs_to :user, class_name: 'User', inverse_of: :profile, dependent: :destroy
  accepts_nested_attributes_for :user, reject_if: :all_blank

  # enum status: { yes: true, no: false, }
end
