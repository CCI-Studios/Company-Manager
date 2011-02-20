# == Schema Information
# Schema version: 20110219231503
#
# Table name: users
#
#  id            :integer         not null, primary key
#  user_name     :string(255)
#  password_hash :string(255)
#  last_signin   :datetime
#  last_ip       :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
end
