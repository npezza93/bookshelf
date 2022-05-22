# frozen_string_literal: true

Rails.application.routes.draw do
  resources :authors, only: :index
  resources :books, only: %i(index show)
  resources :categories, only: :index
  resources :formats, only: :index

  root "books#index"
end
