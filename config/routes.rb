Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #show all tasks
  get "tasks", to: "tasks#index", as: "tasks"



  #Create a task
  get "tasks/new", to: "tasks#new", as: "new"
  post "tasks", to: "tasks#create", as: "create"

  #Show specific task
  get "tasks/:id", to: "tasks#show", as: "task"

  #edit specific task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "tasks/:id", to: "tasks#update"

  #delete speific task
  delete "tasks/:id", to: "tasks#destroy"

end
