# == Schema Information
# Schema version: 20110219231503
#
# Table name: campaign_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  prefix     :string(255)
#  suffix     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class CampaignType < ActiveRecord::Base
end
