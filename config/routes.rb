Rails.application.routes.draw do
    root to:'memos#index'
    get "/new" ,to:'memos#new'
    post '/create',to:'memos#create'
    delete "/memos/:id",to:"memos#destroy"
    get "/memos/:id/edit",to:"memos#edit"
    patch "/memos/:id",to:"memos#update"
    get "category/:id",to:"categories#show"
    get "/user" ,to:"memos#user"
    post "/complete",to:"memos#complete"
    get "/login" ,to:"memos#login"
    post "/user_login",to:"memos#user_login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
