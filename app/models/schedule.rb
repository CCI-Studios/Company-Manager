# == Schema Information
# Schema version: 20110219231503
#
# Table name: schedules
#
#  id         :integer         not null, primary key
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#

class Schedule < ActiveRecord::Base
end
