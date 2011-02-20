# == Schema Information
# Schema version: 20110219231503
#
# Table name: schedule_blocks
#
#  id          :integer         not null, primary key
#  order       :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class ScheduleBlock < ActiveRecord::Base
end
