Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get "/tasks", to: "tasks#index"
    #create the new task
    get "/tasks/new", to: "tasks#new"
    post "/tasks", to: "tasks#create"
    #see the details about one task
    get "/tasks/:id", to: "tasks#show", as: "task"

    get "/tasks/:id/edit", to: "tasks#edit", as: "task_update"
    patch "/tasks/:id", to: "tasks#update"

    delete "/tasks/:id", to: "tasks#destroy"
end
