Rails.application.routes.draw do
  devise_for :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  

  devise_scope :employee do 
    root to: "devise/sessions#new"
  end

  # devise_for :employees, path_names: {
  #   sign_in: '',
  #   sign_out: 'signOut'
  # }
  get '/test', to: 'main_menu#test'
  get '/mainMenu', to: 'main_menu#index'
  get '/productListing', to: 'product_listing#index'
  get '/productDetail', to: 'product_detail#index'
  post '/productDetail', to: 'product_detail#new'

  resources :employee
end
