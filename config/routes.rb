Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :movies, only: [:index]
      resources :seasons, only: [:index]
      resources :movies_and_seasons, only: [:index]
    end
  end
end
