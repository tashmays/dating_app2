Rails.application.routes.draw do
  #resources :profiles

  devise_for :users, controllers: {registrations: 'registrations'}
  root to: "home#index"
   get 'profiles/liked_people/', to: 'profiles#liked_people', as: 'liked_people'
   get 'profiles/liked_user/', to: 'profiles#liked_user', as: 'liked_user'
  resources :profiles do
    post 'like',   to: 'socializations#like'
    post 'unlike', to: 'socializations#unlike'
  end

  post 'profiles/toggle_like/:profile_id', to: 'profiles#toggle_like', as: "toggle_like"

end
