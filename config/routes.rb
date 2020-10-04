Rails.application.routes.draw do
resources :users, only:[:show, :new, :create, :index]
  resources :events, only:[:index, :new, :create, :show] do
  	resources :event_attendings, only:[:create, :new]
  end
  
  root 'sessions#welcome'
  # get 'log_in', to: 'users#log_in'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#logout'

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
