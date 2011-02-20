# == Schema Information
# Schema version: 20110219231503
#
# Table name: sales
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  amount     :float
#  close_date :date
#  created_at :datetime
#  updated_at :datetime
#

class Sale < ActiveRecord::Base
end
