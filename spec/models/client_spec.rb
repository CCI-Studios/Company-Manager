require 'spec_helper'

describe Client do

  before(:each) do
    @attr = { :first_name => 'Jim', :last_name => 'Smith', :title => 'Mr.',
      :phone1 => '5195551234', :extension1 => '1234', :phone2 => '5193455555', :extension2 => '2345',
      :address1 => '123 Here Street', :address2 => 'Unit 3', :city => 'Sarnia', :province => 'On', :country => 'Canada', :postal_code => 'j2j 4j5' }
  end

  it "should create new client given valid attributes" do
      Client.create!(@attr);
  end

	it "should require first name" do
    c = Client.new(@attr.merge(:first_name => ""))
    c.should_not be_valid
  end

	it "should require last name" do
	  c = Client.new(@attr.merge(:last_name =>""))
	  c.should_not be_valid
  end

	it "should require phone number" do
	  c = Client.new(@attr.merge(:phone1 => ""))
  	c.should_not be_valid
  end

	it "should have valid fullname" do
	  c = Client.new(@attr)
	  fullname = "#{c.last_name}, #{c.first_name}"
	  c.fullname.should == fullname
	end


	it "should have properly formated phone number"
end
