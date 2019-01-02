Rails.application.routes.draw do
  resources :team_games
  resources :players, except: [:new, :create, :destroy]
  resources :teams, except: [:destroy]
  resources :leagues, except: [:edit, :update, :destroy]
  resources :users, except: [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
