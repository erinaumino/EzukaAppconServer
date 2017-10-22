Rails.application.routes.draw do
  get 'votes/vote'

  get 'votes/result'

  get 'api/v1/apps' => 'apps#api'

  resources :apps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
