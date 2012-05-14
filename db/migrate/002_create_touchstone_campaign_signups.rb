class CreateTouchstoneCampaignSignups < ActiveRecord::Migration
  
  def change
    
    column = Touchstone.association_name + "_id"
    
    create_table :campaign_signups do |t|
      t.integer column.to_sym
      t.integer :campaign_id
      t.timestamps
    end
  end
  
end