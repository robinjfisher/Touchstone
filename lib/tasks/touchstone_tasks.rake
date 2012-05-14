# require 'thor'
# include Thor
# 
# namespace :touchstone do
#   
#   desc "Injects the necessary code into your application to run Touchstone"
#   task :install do
#     inject_into_file "#{Rails.root}/config/routes.rb", "mount Touchstone::Engine, :at => '/touchstone/'", :after => "routes.draw do"
#   end
# end