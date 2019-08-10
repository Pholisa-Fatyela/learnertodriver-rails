Rails.application.routes.draw do

  # sidekiq web interface
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq' 

  root 'landing#index'

  namespace :admin do
    resources :posts
    resources :users
    resources :comments

    root to: 'posts#index'
  end

  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
    registrations: 'users/registrations'

  },
  :path => '/',
  :path_names => {
    :sign_in => 'login',
    :sign_out => 'logout'
  }

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
  resources :questions, only: :index

  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"
  get '/offline.html' => "service_worker#offline"

end
