Rails.application.routes.draw do
  root :to => 'home#index'
  resources :projects

  get 'about', :to => 'home#about'
  get 'contact', :to => 'home#contact'
end
