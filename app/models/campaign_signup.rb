class CampaignSignup < ActiveRecord::Base
  
  belongs_to :campaign, :class_name => "Campaign", :foreign_key => "campaign_id"
  belongs_to :user, :class_name => Touchstone.association_name.capitalize, :foreign_key => "#{Touchstone.association_name}_id" # TODO: Fix this
  
  attr_accessible "#{Touchstone.association_name}_id".to_sym, :campaign_id
  
end