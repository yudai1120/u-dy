Rails.application.routes.draw do
  get 'user/new'
  get 'pages/index'
  root "pages#index"
  get "pages/help"
end
