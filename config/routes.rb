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
    get '/about', action: 'about', as: :about
    get '/courses', action: 'courses',as: :courses
    # get '/privacy', action: :privacy_policy
    # get '/terms', action: :terms
    # get '/website-terms', action: :website_terms
    # get '/disclaimer', action: :disclaimer
  end

  # Signup. The first renders a form, the second receives the form and create a user in the database.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  # get '/users' => 'users#show'

  # these routes are for showing users a login form and log in / out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # Gmail signup/login
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  get 'auth/failure', to: redirect('/')
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login_google'

  # Facebook signup/login
  get 'login', to: redirect('/auth/facebook'), as: 'login_facebook'

  # Sidekiq
  # mount Sidekiq::Web => '/sidekiq'

  # Posts
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
end
