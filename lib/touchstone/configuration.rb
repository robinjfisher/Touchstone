require 'singleton'
module Touchstone
  module Configuration
   
    extend self
    
    attr_accessor :association_name, :column_names, :currency
    
    def association_name=name
      @name = name.downcase
    end
    
    def association_name
      @name || "user"
    end
    
    def column_names=columns
      @columns = columns.map(&:to_s)
    end
    
    def column_names
      @columns || [:id,:created_at]
    end
    
    def currency=currency
      @currency = currency
    end
    
    def currency
      @currency || "$"
    end
    
    def authenticate=authenticate
      @authenticate = authenticate
    end
    
    def authenticate
      @authenticate
    end
    
    def costs=costs
      @costs = costs
    end
    
    def costs
      @costs
    end
    
  end
end