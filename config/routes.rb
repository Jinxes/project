Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :user, only: [:index, :create, :show, :update, :destroy]
      resources :auth, only: [:index, :create, :show, :update, :destroy]
      put '/user', to: 'user#update', as: 'user_update'
    end
  end
end
