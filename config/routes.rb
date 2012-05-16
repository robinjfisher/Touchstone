Touchstone::Engine.routes.draw do
  
  root :to => 'dashboard#dashboard'
  match 'dashboard' => 'dashboard#dashboard'
  resources :campaigns
  
end
