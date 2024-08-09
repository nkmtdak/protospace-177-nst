Rails.application.routes.draw do
 root to:"prototypes#index"
 resources :rototypes, only: :index

end
