require 'singleton'
module Touchstone
  module Configuration
   
    extend self
    
    attr_accessor :association_name
    
    def association_name=name
      @name = name.downcase
    end
    
    def association_name
      @name || "user"
    end
    
  end
end