WizcmsArticle::Engine.routes.draw do

  namespace :admin do
    resources :articles do
      get 'to_page', on: :member
    end
    resources :article_categories
    resources :pages
    resources :files, only: [:index, :destroy] do
      get 'manager', on: :collection
      post 'manager', on: :collection
    end

  end

  # resources :articles

  # root "articles#index"
end
