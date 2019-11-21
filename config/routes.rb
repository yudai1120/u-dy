Rails.application.routes.draw do
  get '/attends' => "attends#index"
  post "/attends" => "attends#create"
  post "/punch_out" => "attends#punch_out"
  post "/break_time" => "attends#break_time"
  post "/break_time_end" => "attends#break_time_end"
  resources :companies
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  root "pages#index"
  get "pages/help"
  get "sessions/help"
  get "/attends/:id/edit" => "attends#edit",as: "attend"
  patch "/attends/:id/edit" => "attends#update"
  resources :users
  
  get    'https://u-dy.herokuapp.com/login',   to: 'sessions#new'
  post   'https://u-dy.herokuapp.com/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  
end
