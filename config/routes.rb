Rails.application.routes.draw do
  resources :event_times
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
