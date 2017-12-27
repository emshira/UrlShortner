Rails.application.routes.draw do

   root "url_shortners#index"

   resources :url_shortners

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
