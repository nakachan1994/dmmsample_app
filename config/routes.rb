Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'homes/about', to:'homes#about', as:'about_homes'
  resources :todolists do
    resource :completes, only:[:create, :destroy]
  end
end
