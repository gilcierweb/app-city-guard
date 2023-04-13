# == Schema Information
#
# Table name: conductors
#
#  id            :bigint           not null, primary key
#  bio           :text
#  birthday      :date
#  cpf           :bigint
#  first_name    :string
#  full_name     :string
#  last_name     :string
#  nickname      :string
#  qualified     :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  inspection_id :bigint           not null
#
# Indexes
#
#  index_conductors_on_inspection_id  (inspection_id)
#
# Foreign Keys
#
#  fk_rails_...  (inspection_id => inspections.id)
#
class Conductor < ApplicationRecord
  belongs_to :inspection
  has_many :vehicles
end
