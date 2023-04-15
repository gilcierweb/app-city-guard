# == Schema Information
#
# Table name: brands
#
#  id         :bigint           not null, primary key
#  code       :integer
#  kind       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Brand < ApplicationRecord
  has_many :vehicles

  enum kind: { car: 1, moto: 2, truck: 3 }

  def self.select_list()
    self.all.collect { |row| [row.name, row.id] }
  end
end
