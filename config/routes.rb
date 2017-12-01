Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => 'home#index'
  resources :projects

  get 'about', :to => 'home#about'
  get 'contact', :to => 'home#contact'
end
