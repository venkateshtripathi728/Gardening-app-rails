Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens do
    resources :plants, only: [:create,:show]
  end
  resource :plants, only: [:destroy]

  resources :plants, only: [] do
    resources :planttags, only: [:new,:create]
  end

  resources :planttags, only: [:destroy]
end
