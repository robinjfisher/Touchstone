# encoding: utf-8

Touchstone.config do |c|
  
  # By default, Touchstone assumes that you have a User model
  # in your application and will associate campaign signups
  # with a user_id in the campaign_signups table. You can
  # customise the association by using this configuration
  # option.
  
  c.association_name = "User"
  
  # When viewing a campaign, Touchstone will show a list of
  # users who have signed up as a result of that campaign.
  # Use this option to set an array of fields that you would
  # like to appear in the view. By default, Touchstone will
  # only show the id and created_at fields.
  
  c.column_names = [:id,:created_at]
  
  # This sets the currency symbol that you would like
  # displayed. By default it is $
  
  c.currency = "$"
  
  # If set to true, http_basic authentication will be in place
  # before you can access Touchstone. You should create a YAML
  # file in Rails.root/config called touchstone.yml containing
  # a name and password
  
  c.authenticate = true
  
end