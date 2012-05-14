class CreateTouchstoneCampaignVisitsTable < ActiveRecord::Migration
  
  def change
    create_table :campaign_visits do |t|
      t.integer   :campaign_id
      t.string    :request_ip
      t.timestamps
    end
  end
  
end