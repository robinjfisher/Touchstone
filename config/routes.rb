Touchstone::Engine.routes.draw do
  
  root :to => 'campaigns#index'
  resources :campaigns
  
end
