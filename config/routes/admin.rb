namespace :admin do
  resources :inspections do
    get '/cities/:state_id', to: 'inspections#cities', on: :collection
  end

  resources :profiles

  get 'dashboard/index'
  root to: 'dashboard#index'
end
