require 'sidekiq/web'

Rails.application.routes.draw do
  resources :posts
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'posts#index'
end
