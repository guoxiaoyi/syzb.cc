WizcmsLink::Engine.routes.draw do
  namespace :admin do
    resources :links
    resources :wizcms_link_categories
  end
  resources :links

end
