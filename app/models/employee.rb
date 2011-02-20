# == Schema Information
# Schema version: 20110219231503
#
# Table name: employees
#
#  id          :integer         not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  title       :string(255)
#  phone1      :string(255)
#  extension1  :string(255)
#  phone2      :string(255)
#  extension2  :string(255)
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  province    :string(255)
#  country     :string(255)
#  postal_code :string(255)
#  start_date  :date
#  end_date    :date
#  created_at  :datetime
#  updated_at  :datetime
#

class Employee < ActiveRecord::Base
end
