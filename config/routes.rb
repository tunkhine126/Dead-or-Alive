Rails.application.routes.draw do

  resources :comments
  resources :posts, only: [:index, :create, :update, :delete]
  resources :answers, only: [:index]
  resources :questions, only: [:index]
  resources :locations, only: [:index, :create, :update]
  # resources :quizzes, only: [:index]

  namespace :api do
    namespace :v1 do

      resources :users, only: [:create, :index, :delete, :show, :update]

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
