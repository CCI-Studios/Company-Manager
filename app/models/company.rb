# == Schema Information
# Schema version: 20110219231503
#
# Table name: companies
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  phone       :string(255)
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  province    :string(255)
#  country     :string(255)
#  postal_code :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Company < ActiveRecord::Base
end
