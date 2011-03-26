require 'spec_helper'

describe Client do
	before(:each) do
		@attr = { :first_name => "Joe", :last_name => "Blow", :title => "Mr.", :phone1 => "519 555-1234", :extension1 => "",  :phone2 => "519 555-9876", :extension2 => "123", :address1 => "123 Here St.", :address2 => "", :city => "Sarnia", :province => "Ontario", :country => "Canada", :postal_code => "E5B 2J7" }
	end
	
	it "should create object given valid attributes" do
		Client.create!(@attr)
	end
		
	it "should require first name" do
		no_fname_client = Client.new(@attr.merge(:first_name => ""))
		no_fname_client.should_not be_valid
	end
		
	it "should require last name" do
		no_lname_vclient = Client.new(@attr.merge(:last_name => ""))
		no_lname_vclient.should_not be_valid
	end
	
	it "should require phone1" do
		no_phone_client = Client.new(@attr.merge(:phone1 => ""))
		no_phone_client.should_not be_valid
	end
	
	it "should have valid or nil email"
end
