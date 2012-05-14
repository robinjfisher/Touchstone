require "touchstone/engine"
require "touchstone/configuration"

module Touchstone
  
  include Configuration
  
  mattr_accessor :app_root
  
  class << self
    def configure &block
      yield Touchstone::Configuration
    end
  end
  
end
