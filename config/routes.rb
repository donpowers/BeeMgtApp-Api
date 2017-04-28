# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  resources :hives, only: [:index, :show, :create, :update, :destroy, :my_hives]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
