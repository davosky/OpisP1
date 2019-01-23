Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get 'home/about'
  get 'home/authorization'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :inca_receipts do
    collection do
      get :bill_download
    end
  end
  resources :inca_subscriptions do
    collection do
      get :bill_download
      get :bill_downloadnidil
    end
  end
  resources :uvl_receipts do
    collection do
      get :bill_download
    end
  end
  resources :uvl_subscriptions do
    collection do
      get :bill_download
      get :bill_downloadnidil
    end
  end
  resources :generic_subscriptions do
    collection do
      get :bill_download
      get :bill_downloadnidil
    end
  end
end
