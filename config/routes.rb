Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :team_games

  resources :players, except: [:new, :create, :destroy]

  resources :teams, except: [:destroy, :new, :create]
  get 'users/:id/new_team', to: 'teams#new', as: 'new_team_to_league'
  post 'teams', to: 'teams#create', as: 'create_team'
  get 'teams/:id/destroy_all', to: 'teams#destroy_all_players', as: 'destroy_all_players'
  get 'teams/:id/rand', to: 'teams#create_rand_players', as: 'create_rand_players'

  resources :leagues, except: [:edit, :update, :destroy]
  get 'leagues/:id/matchups', to: 'leagues#matchups', as: 'matchups'

  resources :users, except: [:index, :destroy]

end
