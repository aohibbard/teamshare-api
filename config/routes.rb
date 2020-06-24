Rails.application.routes.draw do
  resources :objectives
  resources :projects
  resources :users

  # nest objectives under projects
  
end
