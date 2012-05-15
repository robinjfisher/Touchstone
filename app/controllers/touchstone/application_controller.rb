module Touchstone
  class ApplicationController < ActionController::Base
    
    if Touchstone.authenticate == true
      config = YAML::load(File.open("#{Rails.root}/config/touchstone.yml"))
      http_basic_authenticate_with :name => config['name'], :password => config['password']
    end
    
  end
end
