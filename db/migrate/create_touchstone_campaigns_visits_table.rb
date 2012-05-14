class CreateTouchstoneCampaignVisitsTable < ActiveRecord::Migration
  
  def change
    create_table :campaign_visits do |t|
      t.integer   :campaign_id
      t.string    :request_ip
      t.timestamps
      
      add_index :request_ip
    end
  end
  
end