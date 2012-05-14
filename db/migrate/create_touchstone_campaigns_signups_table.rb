class CreateTouchstoneCampaignSignupsTable < ActiveRecord::Migration
  
  def change
    create_table :campaign_signups do |t|
      t.integer :<%= association_name %>_id
      t.integer :campaign_id
      t.timestamps
    end
  end
  
end