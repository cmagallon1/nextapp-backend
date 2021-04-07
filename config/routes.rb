Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  namespace :api do
    namespace :v1, defaults: {format: :json} do
    end
  end
  if Rails.env.development?
    get '/coverage', to: 'coverages#index'
  end
end
