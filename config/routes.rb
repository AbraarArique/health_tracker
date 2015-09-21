Rails.application.routes.draw do
  root 'days#index'
  resources :days, except: [:new, :edit] do
    resources :meals, except: [:index, :new, :edit]
    resources :workouts, except: [:index, :new, :edit]
  end
end
