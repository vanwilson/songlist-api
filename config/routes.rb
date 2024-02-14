Rails.application.routes.draw do
  get "/songs" => "songs#index"

  get "/songlists" => "songlists#index"
  post "/songlists" => "songlists#create"
  get "/songlists/:id" => "songlists#show"
end
