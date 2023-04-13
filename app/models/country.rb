# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  code       :integer
#  name_en    :string
#  name_es    :string
#  name_pt_BR :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Country < ApplicationRecord
end
