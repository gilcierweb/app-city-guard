namespace :admin do
  resources :taxes
  resources :inspections do
    get '/cities/:state_id', to: 'inspections#cities', on: :collection
    get '/brands/:kind', to: 'inspections#brands', on: :collection
  end

  resources :profiles

  get 'dashboard/index'
  root to: 'dashboard#index'
end
