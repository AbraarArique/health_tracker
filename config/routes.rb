Rails.application.routes.draw do
  root 'days#index'
  resources :days, except: [:new, :edit] do
    resources :meals, except: [:index, :new, :show]
    resources :workouts, except: [:index, :new, :show]
  end
end
