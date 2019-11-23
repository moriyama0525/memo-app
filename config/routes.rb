Rails.application.routes.draw do
    root to:'memos#index'
    get "/new" ,to:'memos#new'
    post '/create',to:'memos#create'
    delete "/memos/:id",to:"memos#destroy"
    get "/memos/:id/edit",to:"memos#edit"
    patch "/memos/:id",to:"memos#update"
    get "category/:id",to:"categories#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
