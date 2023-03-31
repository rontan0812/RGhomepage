Rails.application.routes.draw do
  get '/' => "home#top"
  get "qaa" => "home#qaa"
  
  post "users/resister" => "users#resister"
  get "resister" => "users#resister_form"
  post "users/login" => "users#login"
  get "login" => "users#login_form"
  get "users/index" => "users#index"
  post "users/logout" => "users#logout"
  
  get "claim" => "claim#claim_form"
  post "claim/claim" => "claim#claim"
  get "claim/index" => "claim#index"
end
