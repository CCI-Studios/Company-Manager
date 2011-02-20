# == Schema Information
# Schema version: 20110219231503
#
# Table name: campaigns
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  start_date :date
#  end_date   :date
#  goal       :float
#  goal_type  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Campaign < ActiveRecord::Base
end
