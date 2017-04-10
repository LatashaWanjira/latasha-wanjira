Rails.application.routes.draw do
  root :to => 'home#index'
  resources :home
  resources :skills
  resources :projects
  devise_for :admins
end
