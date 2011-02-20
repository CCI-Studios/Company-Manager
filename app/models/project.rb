# == Schema Information
# Schema version: 20110219231503
#
# Table name: projects
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  due_date        :date
#  start_date      :date
#  completion_date :date
#  status          :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Project < ActiveRecord::Base
end
