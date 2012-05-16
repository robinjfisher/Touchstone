require "touchstone/engine"
require "touchstone/configuration"

module Touchstone
  
  include Configuration
  
  class << self
    
    def config &block
      yield Touchstone::Configuration
    end
    
    def association_name
      Touchstone::Configuration.association_name
    end
    
    def column_names
      Touchstone::Configuration.column_names
    end
    
    def currency
      Touchstone::Configuration.currency
    end
    
    def authenticate
      Touchstone::Configuration.authenticate
    end
    
    def costs
      costs = Touchstone::Configuration.costs
      costs.delete(:total_cost)
      total_cost = costs.values.inject{|sum,x| sum + x}
      costs.merge!(:total_cost => total_cost)
      costs
    end
    
  end
  
end
