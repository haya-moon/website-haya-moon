Rails.application.routes.draw do
  root to: 'pages#home'
  resources :contacts, only: %i[create]
end
