class CreateTouchstoneEvents < ActiveRecord::Migration
  
  def change
    create_table :touchstone_events do |t|
      t.string    :event, :null => false
      t.string    :model_name, :null => false
      t.timestamps
    end
    
    add_index :touchstone_events, :event
  end
  
end