Rails.application.routes.draw do

  #Pages
  root 'pages#home'

  get 'pages/home'
  namespace :admin do
    #get 'roles/index'
    #get 'roles/new'
    #get 'roles/show'
    #get 'roles/edit'

    get 'roles',            to: 'roles#index',    as: 'roles'
    get 'roles/new',        to: 'roles#new',      as: 'new_role'
    get 'roles/:id',        to: 'roles#show',     as: 'role'
    get 'roles/:id/edit',   to: 'roles#edit',     as: 'edit_role'   

    post    'roles',           to: 'roles#create'
    put     'roles/:id',       to: 'roles#update'
    patch   'roles/:id',       to: 'roles#update'
    delete  'roles/:id',       to: 'roles#destroy'

  end

  #STATUSES
  namespace :admin do
    get 'statuses',           to: 'statuses#index',     as: 'statuses'
    get 'statuses/new',       to: 'statuses#new',       as: 'new_status'
    get 'statuses/:id',       to: 'statuses#show',      as: 'status'
    get 'statuses/:id/edit',  to: 'statuses#edit',      as: 'edit_status'

    post    'statuses',           to: 'statuses#create'
    put     'statuses/:id',       to: 'statuses#update'
    patch   'statuses/:id',       to: 'statuses#update'
    delete  'statuses/:id',       to: 'statuses#destroy'

  end
  #PRODUCTS
  namespace :admin do
    #get 'products/index'
    #get 'products/new'
    #get 'products/show'
    #get 'products/edit'

    get 'products',           to: 'products#index', as: 'products'
    get 'products/new',       to: 'products#new',   as: 'new_product'
    get 'products/:id',       to: 'products#show',  as: 'product'
    get 'products/:id/edit',  to: 'products#edit',   as: 'edit_product'

    post    'products',           to: 'products#create'
    put     'products/:id',       to: 'products#update'
    patch   'products/:id',       to: 'products#update'
    delete  'products/:id',       to: 'products#destroy'

  end

  #CATEGORIES
  namespace :admin do
    #get 'categories/index'
    #get 'categories/new'
    #get 'categories/show'
    #get 'categories/edit'

    get     'categories',           to: 'categories#index',   as: 'categories'
    get     'categories/new',       to: 'categories#new',     as: 'new_category'
    get     'categories/:id',       to: 'categories#show',    as: 'category'
    get     'categories/:id/edit',  to: 'categories#edit',    as: 'edit_category'

    post    'categories',           to: 'categories#create'
    put     'categories/:id',       to: 'categories#update'
    patch   'categories/:id',       to: 'categories#update'
    delete  'categories/:id',       to: 'categories#destroy'


  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
