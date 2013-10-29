DannieCraigslist::Application.routes.draw do
  root to: 'categories#index'
  # get '/categories/:id', to: 'posts#index'
  resources :categories, only: [:index] do
    resources :posts
  end
end
