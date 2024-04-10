Rails.application.routes.draw do
  resources :movies
  resources :users do
    get "autocomplete", on: :collection
  end

  resources :state_chips, only: :new, param: :combobox_value
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
