Rails.application.routes.draw do
  root 'games#new'
  resources :games, only: %i[new create] do
    resource :progresses, only: %i[new create]
  end
end
