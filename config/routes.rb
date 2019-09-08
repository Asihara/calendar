Rails.application.routes.draw do
  resources :events do
    resources :participants , except: :index
  end
  root 'events#index'
  # resources :calendars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
