Rails.application.routes.draw do
  devise_for :users
  root :to => 'home#index'
  resources :projects

  get 'about', :to => 'home#about'
  get 'contact', :to => 'home#contact'
end
