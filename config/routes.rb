# frozen_string_literal: true

Rails.application.routes.draw do
  resources :mounts
  resources :generations, only: [:index, :show]
  resources :families, only: [:index, :show]
end
