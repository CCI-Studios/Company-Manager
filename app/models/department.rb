# == Schema Information
# Schema version: 20110219231503
#
# Table name: departments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Department < ActiveRecord::Base
  default_scope :order => "name"

  has_many :employees
end
