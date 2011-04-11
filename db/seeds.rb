# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Department.delete_all
Department.find_or_create_by_name(:name => 'Development')
Department.find_or_create_by_name(:name => 'Sales')
Department.find_or_create_by_name(:name => 'Design')
Department.find_or_create_by_name(:name => 'Administrative')
Department.find_or_create_by_name(:name => 'Promotions')

Status.delete_all
Status.find_or_create_by_title_and_group(:title => 'Open', :group => 1) # tasks
Status.find_or_create_by_title_and_group(:title => 'Closed', :group => 1)
Status.find_or_create_by_title_and_group(:title => 'Pending', :group => 1)
Status.find_or_create_by_title_and_group(:title => 'Proposed', :group => 2) # Project
Status.find_or_create_by_title_and_group(:title => 'Accepted', :group => 2)
Status.find_or_create_by_title_and_group(:title => 'In Design', :group => 2)
Status.find_or_create_by_title_and_group(:title => 'In Development', :group => 2)
Status.find_or_create_by_title_and_group(:title => 'Finalizing', :group => 2)
Status.find_or_create_by_title_and_group(:title => 'Under Warentee', :group => 2)
Status.find_or_create_by_title_and_group(:title => 'Inactive', :group => 2)
