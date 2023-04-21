# == Schema Information
#
# Table name: inspections_equipments
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  equipment_id  :bigint           not null
#  inspection_id :bigint           not null
#
# Indexes
#
#  index_inspections_equipments_on_equipment_id   (equipment_id)
#  index_inspections_equipments_on_inspection_id  (inspection_id)
#
# Foreign Keys
#
#  fk_rails_...  (equipment_id => equipment.id)
#  fk_rails_...  (inspection_id => inspections.id)
#
FactoryBot.define do
  factory :inspections_equipment do
    inspection { nil }
    equipment { nil }
  end
end
