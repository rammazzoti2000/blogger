Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  #GET '/articles/:id/edit', to: 'articles#edit'
end
