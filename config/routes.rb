Rails.application.routes.draw do
  root 'days#index'
  resources :days, except: [:new, :edit] do
    resources :meals, only: [:create, :update, :destroy]
    resources :workouts, only: [:create, :update, :destroy]
  end
end
