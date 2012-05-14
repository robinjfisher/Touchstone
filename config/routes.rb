Touchstone::Engine.routes.draw do
  
  get 'touchstone' => 'campaigns#index', :as => :touchstone_index
  resources :campaigns
  
end
