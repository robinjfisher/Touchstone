class CampaignVisit < ActiveRecord::Base
  
  belongs_to :campaign, :class_name => "Campaign", :foreign_key => "campaign_id"
  
end