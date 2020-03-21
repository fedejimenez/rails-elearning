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

  # pages
  scope module: 'home' do
    # get '/faq', action: :faq
    get '/about', action: 'about', as: 'about'
    # get '/contact', action: :contact # ,  as: :organisation_contact
    # get '/privacy', action: :privacy_policy
    # get '/terms', action: :terms
    # get '/website-terms', action: :website_terms
    # get '/disclaimer', action: :disclaimer
  end

  # posts
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
end
