TweetApp::Application.routes.draw do
  
  get "home/index"

  devise_for :users
  resources :users, :only => [:show, :index, :create] do
    resources :tweets
  end
  match "admin" => "admin#index", :via => :get
  match "home" => "home#index", :via => :get
  root :to=>'home#index'
end
