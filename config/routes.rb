Rails.application.routes.draw do
  root to: 'pages#home'
  resources :pages do
    collection do
      post :contact
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
