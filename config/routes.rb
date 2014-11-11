Rails.application.routes.draw do
  resources :lists do
    resources :steps
  end

  post 'lists/list_id/steps/new'
  root 'lists#index'
end
