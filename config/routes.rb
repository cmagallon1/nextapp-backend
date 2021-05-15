Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resource :account, only: [:create]
    end
  end

  if Rails.env.development?
    get '/coverage', to: 'coverages#index'
  end
end
