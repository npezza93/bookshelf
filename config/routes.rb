# frozen_string_literal: true

Rails.application.routes.draw do
  resources :formats
  resources :books
  resources :categories
  resources :authors

  root "books#index"
end
