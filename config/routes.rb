DannieCraigslist::Application.routes.draw do
  root to: 'categories#index'

  resources :categories, only: [:index] do
    resources :posts
  end
end
