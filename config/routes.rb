Rails.application.routes.draw do
	resources :messages, only: [:index,:show, :new, :create]
  namespace :api, defaults: { format: :json } do
    resources :messages, only: [:index,:show, :new, :create]
  end
end
