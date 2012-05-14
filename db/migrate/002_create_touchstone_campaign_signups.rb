class CreateTouchstoneCampaignSignups < ActiveRecord::Migration
  
  def change
    create_table :campaign_signups do |t|
      t.integer :user_id
      t.integer :campaign_id
      t.timestamps
    end
  end
  
end