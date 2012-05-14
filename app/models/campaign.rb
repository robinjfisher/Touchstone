class Campaign < ActiveRecord::Base
  
  validates :name, :presence => true
  validates :spend_amount, :presence => true
  
  has_many :campaign_signups
  has_many :campaign_visits
  
  def revenue
    if self.campaign_signups.length > 0
      total = Array.new
      self.campaign_signups.each do |signup|
        total << signup.user.lifetime_value # TODO: Fix this
      end
      total.inject{|sum,x| sum + x}
    else
      0.00
    end
  end
  
  def roi
    if self.revenue == 0 || self.spend_amount == 0
      0.00
    else
      ((self.revenue - self.spend_amount) / self.spend_amount) * 100
    end
  end
  
  def visits
    self.campaign_visits.count
  end
  
  def conversion_rate
    signups = self.campaign_signups.count
    if signups > 0
      (signups.to_f / self.visits.to_f ) * 100
    else
      0.00
    end
  end
  
end