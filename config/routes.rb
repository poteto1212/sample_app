Rails.application.routes.draw do
  #get 'users/new'
  get '/home',to:'static_pages#home'
  get '/help',to:'static_pages#help'
  get '/about',to:'static_pages#about'
  get '/contact',to:'static_pages#contact'
  get '/signup',to:'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  
  #ユーザーリソース
  #user/idのルーティングを設計
  #resourcesを使う事で必要なリソースを全て
  resources :users
end
