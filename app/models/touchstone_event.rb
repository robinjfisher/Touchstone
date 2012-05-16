class TouchstoneEvent < ActiveRecord::Base
  
  attr_accessible :event, :model_name
  
  def self.signups_in(month,year)
    start_date = Date.new(year,month,1,0)
    end_date = start_date.end_of_month
    where(:created_at => (start_date..end_date), :event => "create").count
  end
  
  def self.cancellations_in(month,year)
    start_date = Date.new(year,month,1,0)
    end_date = start_date.end_of_month
    where(:created_at => (start_date..end_date), :event => "destroy").count
  end
  
end