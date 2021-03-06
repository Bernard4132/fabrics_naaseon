Rails.application.routes.draw do
  
  resources :productorders do
    collection { post :update_paid}
  end
  resources :requests
  resources :fabrics
  devise_for :users
  resources :contacts
  
  resources :orders do
  	member { post :fulfill }
  end

  resources :clothes
  
  root to: "static_pages#home"
  match 'about', to: 'static_pages#about', via: 'get'
  match 'kenteclothes', to: 'fabrics#kenteclothes', via: 'get'
  match 'fabricsclothes', to: 'fabrics#fabricsclothes', via: 'get'
  match 'fascinators', to: 'fabrics#fascinators', via: 'get'
  match 'fabricsandclothes', to: 'static_pages#fabricsandclothes', via: 'get'
  match 'mydashboard', to: 'static_pages#mydashboard', via: 'get'
  match 'myorders', to: 'static_pages#myorders', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
