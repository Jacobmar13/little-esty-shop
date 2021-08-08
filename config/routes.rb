Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :merchants do
    resources :items, controller: 'merchant_items' do
      patch 'status', to: 'merchant_items#update_status'
    end
    resources :invoices, controller: 'merchant_invoices'
  end

  resources :invoice_items, only: :update

  # -------Admin routes-------
  namespace :admin do
    controller :dashboards do
      get '/', action: :index
    end
    resources :merchants
    resources :invoices
  end

end
