# frozen_string_literal: true

Rails.application.routes.draw do
  resources :parent_relations
  resources :couple_relations
  resources :couples
  resources :mounts
  resources :generations, only: [:index, :show]
  resources :races, only: [:index, :show]
end
