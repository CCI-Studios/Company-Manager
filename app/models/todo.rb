# == Schema Information
# Schema version: 20110219231503
#
# Table name: todos
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Todo < ActiveRecord::Base
end
