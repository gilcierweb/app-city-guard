namespace :admin do
  resources :inspections
  resources :profiles

  get 'dashboard/index'
  root to: 'dashboard#index'
end
