Rails.application.routes.draw do

  scope :api do 
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users do
      resources :projects do 
        resources :objectives
      end 
    end
  end

  # everything should eventually be nested under users, with backend controls for security, yes?
  resources :users

end
