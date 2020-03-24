Rails.application.routes.draw do
  get 'destinations/new'

  get 'destinations/index'

  get 'destinations/show'

  resources :bloggers, :posts, :destinations
end








