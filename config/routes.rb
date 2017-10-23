Rails.application.routes.draw do

  get 'votes/result'

  get 'api/v1/apps' => 'apps#api'

  post 'api/v1/vote' => 'votes#vote'

  resources :apps, except: [:index], param: :uid
  # get '/apps/:uid/edit' => 'apps#edit'
  # get '/apps/:uid' => 'apps#show'

  get 'admin2017/apps' => 'apps#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
