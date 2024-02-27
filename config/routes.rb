Rails.application.routes.draw do
  get "/songs" => "songs#index"
  post "/songs" => "songs#create"

  get "/songlists" => "songlists#index"
  post "/songlists" => "songlists#create"
  get "/songlists/:id" => "songlists#show"
  patch "/songlists/:id" => "songlists#update"
  delete "/songlists/:id" => "songlists#destroy"
end
