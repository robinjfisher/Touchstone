Touchstone::Engine.routes.draw do
  
  root :to => 'dashboard#dashboard'
  resources :campaigns
  
end
