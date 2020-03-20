Rails.application.routes.draw do
  devise_for :users, :controllers => {:regisrations => "registrations"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  # posts
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
end
