Touchstone::Engine.routes.draw do
  get 'touchstone' => 'touchstone/campaigns#index', :as => :touchstone_index
end
