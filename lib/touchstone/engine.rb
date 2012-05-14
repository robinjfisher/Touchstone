module Touchstone
  class Engine < ::Rails::Engine
    isolate_namespace Touchstone
    
    initialize "team_page.load_app_instance_data" do |app|
      Touchstone.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "team_page.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    
  end
end
