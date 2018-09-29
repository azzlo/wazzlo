Rails.application.routes.draw do
  resources :containers do
    # resources :container_histories, only: [:index]
    collection do
      get 'history', to: 'container_histories#index'
    end
  end
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
