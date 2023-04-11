root to: 'home#index'
devise_for :users

match '*unmatched', to: 'application#route_not_found', via: :all