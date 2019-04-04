Rails.application.routes.draw do
root to: "clients#newclients"
  resources :clients do
    collection do
      get '/change', to: 'clients#change'  
      post '/active', to: 'clients#active' 
      get '/newclient', to:'clients#newclients'   
    end
    
end    
  resources :invoicedetails
  resources :invoices
  resources :users do
    collection do
      get '/overview', to: 'users#overview'
  
end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
