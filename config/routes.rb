Rails.application.routes.draw do
  resources :valve_positions
  resources :uplink_b_downlinks
  resources :time_uplinks
  resources :sensor1s
  resources :alarms
  resources :accumulators
  resources :uplinks
  resources :things
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
