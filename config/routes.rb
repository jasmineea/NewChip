Rails.application.routes.draw do

  get 'calender/index'
  get 'meals/feed'
  resource :accounts
  resource :posts
  get 'posts/index'
  get 'pages/account'
  get 'bookings/index'
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
