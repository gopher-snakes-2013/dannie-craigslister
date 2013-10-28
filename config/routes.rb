DannieCraigslist::Application.routes.draw do
  root to: 'categories#index'
  # resources :posts
  resources :categories, only: [:index, :show]
end
