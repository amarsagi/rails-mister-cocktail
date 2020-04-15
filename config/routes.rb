Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/edit'
  get 'cocktails/create'
  get 'cocktails/update'
  get 'cocktails/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
  	resources :doses
  	resources :reviews
  end






end
