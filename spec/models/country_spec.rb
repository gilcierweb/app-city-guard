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
require 'rails_helper'

RSpec.describe Country, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
