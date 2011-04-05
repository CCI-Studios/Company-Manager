class ProjectStatus < ActiveRecord::Base
  default_scope :order => :ordering

  scope :type, lambda { |type|
    where("project_statuses.type = '' or project_status.type = ?", type)
  }
end
