Rails.application.routes.draw do
  resources :projects do 
    resources :objectives
  end 
  resources :users
end
