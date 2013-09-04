AtReport::Application.routes.draw do
  root :to => 'accessions#index'
  #resources :accessions
  #agreements 'agreements', :controller => 'accessions', :action => 'agreements'
  get 'agreements', :to => 'accessions#agreements'
  get 'inventory',  :to => 'accessions#inventory'
end
