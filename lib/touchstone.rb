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
    
  end
  
end
