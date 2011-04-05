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
  attr_accessible :name, :due_date, :start_date, :completion_date, :status_id, :manager_id

  default_scope :order => :name

  belongs_to :manager, :class_name => 'Employee'
  #belongs_to :status
end
