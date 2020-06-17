Rails.application.routes.draw do

  scope :api do 
    resources :projects do 
      resources :objectives
    end 
  end
  # everything should eventually be nested under users, with backend controls for security, yes?
  resources :users
end
