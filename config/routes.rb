Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users,
             path: '',path_names:{sign_up: 'register', sign_in: 'login', sign_out: 'logout',edit: 'profile'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  get '/check.txt', to: proc {[200, {}, ['it_works']]}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
