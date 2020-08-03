Rails.application.routes.draw do
  devise_for :users
  root to: "games#index"
  resources :games do 
    resources :histories, only: [:create, :show, :update, :edit, :destroy]
    collection do 
      get 'year'
    end
  end

  resources :users, only: [:edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
