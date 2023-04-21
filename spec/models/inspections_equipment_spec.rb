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
require 'rails_helper'

RSpec.describe InspectionsEquipment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
