require 'singleton'
module Touchstone
  module Configuration
   
    extend self
    
    attr_accessor :association_name, :column_names
    
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
    
  end
end