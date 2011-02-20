# == Schema Information
# Schema version: 20110219231503
#
# Table name: activities
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  description     :text
#  due_date        :date
#  start_date      :date
#  completion_date :date
#  order           :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Activity < ActiveRecord::Base
end
