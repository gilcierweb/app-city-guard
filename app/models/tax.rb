# == Schema Information
#
# Table name: taxes
#
#  id         :bigint           not null, primary key
#  amount     :decimal(, )
#  kind       :integer
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_taxes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Tax < ApplicationRecord
  belongs_to :user
end
