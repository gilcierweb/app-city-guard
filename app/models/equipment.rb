# == Schema Information
#
# Table name: equipment
#
#  id         :bigint           not null, primary key
#  kind       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Equipment < ApplicationRecord
  has_many :inspections_equipments
  has_many :inspections, through: :inspections_equipments

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end
end
