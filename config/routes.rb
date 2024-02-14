Rails.application.routes.draw do
  get "/songs" => "songs#index"

  get "/songlists" => "songlists#index"
end
