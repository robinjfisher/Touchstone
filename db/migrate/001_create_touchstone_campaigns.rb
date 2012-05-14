class CreateTouchstoneCampaigns < ActiveRecord::Migration
  
  def change
    create_table :campaigns do |t|
      t.string  :name
      t.text    :notes
      t.date    :start_date
      t.date    :end_date
      t.float   :spend_amount
      t.timestamps
    end
  end
  
end