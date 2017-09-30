Rails.application.routes.draw do
  get 'videos/api/v1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :reports
      resources :indicators
      resources :videos
    end
  end
end
