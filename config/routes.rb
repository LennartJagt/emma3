Rails.application.routes.draw do
  resources :clients do
    collection do
      get '/change', to: 'clients#change'  
      post '/active', to: 'clients#active'    
    end
end    
  resources :invoicedetails
  resources :invoices
  root "clients#change"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
