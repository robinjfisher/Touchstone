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
  
end