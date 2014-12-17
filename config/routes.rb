TimeTracker::Application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  root to: 'application#index'
  resources :users
end
