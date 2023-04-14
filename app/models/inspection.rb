# == Schema Information
#
# Table name: inspections
#
#  id                  :bigint           not null, primary key
#  address_full        :string
#  code                :integer
#  latitude            :decimal(, )
#  longitude           :decimal(, )
#  motive_apprehension :string
#  neighborhood        :string
#  observations        :text
#  situation           :integer
#  status              :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_inspections_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Inspection < ApplicationRecord
  belongs_to :user
  has_many :conductors

  accepts_nested_attributes_for :conductors, reject_if: :all_blank, allow_destroy: true
end
