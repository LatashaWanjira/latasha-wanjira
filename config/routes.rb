Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'
  resources :home
  resources :skills
  resources :projects
  resources :blogposts do
    resources :comments
  end
  devise_for :admins
end
