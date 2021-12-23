# frozen_string_literal: true

Rails.application.routes.draw do
  resources :hypothesis, only: %i[index create]
  root 'hypothesis#index'
end
