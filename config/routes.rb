Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index" # route for listing all task
  get "tasks/:id", to: "tasks#show" # route for listing ONE specific task, althou i still have no idea how this works
end


