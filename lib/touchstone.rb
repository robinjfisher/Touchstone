require "touchstone/engine"

module Touchstone
  
  autoload_modules Configuration
  mattr_accessor :app_root
  
  class << self
    def configure &block
      yield Touchstone::Configuration
    end
  end
  
end
