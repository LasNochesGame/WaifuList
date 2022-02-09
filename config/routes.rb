Rails.application.routes.draw do
  devise_for :otaku, controllers: { registrations: "registrations" }
    root to: 'home#welcome'
    resources :waifus
    get 'search', to:"home#search"
end
