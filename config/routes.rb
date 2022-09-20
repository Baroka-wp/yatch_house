Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :houses, only: [:index, :show, :update, :destroy] do
        resources :reservations, only: [:index, :show, :update, :destroy]
      end
    end
  end
end
