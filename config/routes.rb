Rails.application.routes.draw do
  resources :staffs
  root to: 'home#index'
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
