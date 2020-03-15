Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index" # route for listing all task
  get "tasks/new", to: "tasks#new"  # this is the part where i have to put new and create above id? or it will read new as a unique id too, but i cant recall why
  post "tasks", to: "tasks#create", as: :taskcreate # this is for submitting the form , confirmation that association is for setting our prefixes, but still not understanding the logic behind it
  get "tasks/:id", to: "tasks#show", as: :taskid# route for listing ONE specific task, althou i still have no idea how this works, my association allows me to name prefixes for routes
end


