Rails.application.routes.draw do
root to: 'home#welcome'
resources :waifus, only: [:index, :create, :new, :show, :update, :destroy, :edit]
get 'search', to:"home#search"
end
