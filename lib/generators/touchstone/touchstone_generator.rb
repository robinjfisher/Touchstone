require 'rails/generators'

class TouchstoneGenerator < Rails::Generators::Base
  
  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end
  
  def copy_initializer_file
    puts "Copying initializer file..."
    copy_file 'touchstone.rb', 'config/initializers/touchstone.rb'
  end
  
  # def set_before_filter
  #     puts "Setting before filter in application_controller.rb..."
  #     insert_into_file 'app/controllers/application_controller.rb', "\n\n\tbefore_filter :set_cookie_and_record_visit", :after => 'ActionController::Base'
  #     insert_into_file 'app/controllers/application_controller.rb', :before => "end" do
  #       "\tprivate\n\n\tdef set_cookie_and_record_visit\n\t\tif params[:cid] && Campaign.find_by_id(params[:cid]) && !CampaignVisit.find_by_request_ip(request.remote_ip)\n\t\t\tif !cookies['touchstone_campaign_id']\n\t\t\t\tcookies['touchstone_campaign_id'] = params[:cid]\n\t\t\t\tCampaignVisit.create(:campaign_id => params[:cid], :request_ip => request.remote_ip)\n\t\t\tend\n\t\tend\n\tend\n"
  #     end
  #   end
  
  def mount_engine
    puts "Mounting engine into routes.rb..."
    insert_into_file 'config/routes.rb', "\n\nmount Touchstone::Engine, :at => '/touchstone/'", :after => 'routes.draw do'
  end
  
end