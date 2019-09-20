Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  post "home/res", to: "home#res"
  get "res", to: "home#reindex"
  post "home/limpar", to: "home#limpar"
  post "home/cancel", to: "home#cancel"
end
