Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/new', to: 'tasks#new' # Route to display the task creation form
  post '/tasks', to: 'tasks#create' # Route to handle the creation of a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # Route to display the task editing form
  put '/tasks/:id', to: 'tasks#update' # Route to handle the update of a task
  get "up" => "rails/health#show", as: :rails_health_check
  # Other routes go here
end
