Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "/restricted", to: "pages#restricted"
  get "/listings", to: "listings#index", as: "listings"
  get "/listings/:id", to: "listings#show", as: "listing"
end
