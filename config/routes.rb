Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "/restricted", to: "pages#restricted"
  get "/listings", to: "listings#index", as: "listings"
  post "listings", to: "listings#create"
  get "listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
end
