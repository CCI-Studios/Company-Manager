# == Schema Information
# Schema version: 20110219231503
#
# Table name: clients
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
#  created_at  :datetime
#  updated_at  :datetime
#

class Client < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :title, :phone1, :extension1, :phone2, :extension2, :email, :address1, :address2, :city, :province, :country, :postal_code
	default_scope :order => "lower(last_name) ASC, lower(first_name) ASC"

	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :phone1, :presence => true

	def fullname
	  "#{last_name}, #{first_name}"
  end
end
