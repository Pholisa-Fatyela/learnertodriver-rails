Rails.application.routes.draw do

  namespace :admin do
      resources :posts
      resources :users
      resources :comments

      root to: 'posts#index'
    end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq' 

  devise_for :users
  root 'landing#index'

  resources :posts do
    resources :comments
    member do
      put 'like', to:    'posts#upvote'
      put 'dislike', to: 'posts#downvote'
    end
  end

  resources :users
  resources :quizzes
  resources :comments, only: :index

end
