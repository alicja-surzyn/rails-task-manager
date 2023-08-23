Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # a new route to list the tasks
  # Then, add a controller action and its view.
  # This action should fetch all tasks,
  # and a view should loop over these to display them,
  # like in the screenshot below
  get "/tasks", to: "tasks#index", as: 'tasks'

  # receive the form submission
  post "/tasks", to: "tasks#create"

  # display the form
  get "/tasks/new", to: "tasks#new", as: "new_task"

  # display the edit form
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"

  get "tasks/:id", to: "tasks#show", as: 'task'

  # receive the edit form submission
  patch "/tasks/:id", to: "tasks#update"

  delete "/tasks/:id", to: "restaurants#destroy"
end
