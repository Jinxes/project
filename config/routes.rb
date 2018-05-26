Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # restful api
  namespace :api do
    namespace :v1 do
      resources :user, only: [:index, :create, :show, :update, :destroy]
      resources :auth, only: [:index, :create, :show, :update, :destroy]
    end
  end

  # web function
  namespace :func do
    namespace :user do
      put '/update', to: 'user#update', as: 'user_update'
    end
    namespace :auth do
      get '/login', to: 'auth#login', as: 'auth_login'
    end
  end
end
