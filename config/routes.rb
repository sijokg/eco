Rails.application.routes.draw do
  devise_for :users
  require 'api_constraints'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  namespace :api, defaults: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true ) do
      resources :vehicles
    end
  end
end
