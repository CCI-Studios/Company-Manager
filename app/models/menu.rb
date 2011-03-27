class Menu < ActiveRecord::Base
  acts_as_tree :order => "ordering"
  scope :roots, { :conditions => "parent_id <> ''", :order => "ordering" }

end
