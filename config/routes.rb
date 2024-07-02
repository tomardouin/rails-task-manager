Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "tasks/new", to: "tasks#new", as: :new

  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task

  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy", as: :delete
end
