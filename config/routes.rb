Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index]
      resources :users , only: [:show] do
        get 'orders/usual', to: 'orders#usual'
        resources :orders, only: [:create, :show]
        get 'address', on: :member
        get 'card', on: :member
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
