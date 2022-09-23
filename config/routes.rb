Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users,
  controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :houses, only: [:index, :show, :update, :destroy, :new, :create]
      resources :reservations, only: [:index, :show, :update, :destroy, :new, :create]
    end
  end
end
