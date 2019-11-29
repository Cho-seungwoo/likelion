Rails.application.routes.draw do
  get 'checks/index'
  get 'checks/create'
  get 'achieves/index'
  get 'achieves/create'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  
  post 'checks/create' => "checks#create"
  get 'checks/index' => "checks#index"
  get 'checks/monthly' => "checks#monthly"
  get 'identities/feedback'=> "identities#feedback"
 
  post 'questions/create' 
  
  root "identities#main"
  
  get 'identities/index' => "identities#index"
  get 'identities/main' => "identities#main"
  get 'identities/choice' => "identities#choice"
  get 'questions/choice' => "questions#choice"
  get 'identities/receiver' => "identities#receiver"
  
  post 'identities/answer' => "identities#answer"

  resources :identities do
  resources :questions, only: [:create, :destroy]
  resources :achieves, only: [:create, :destroy, :index]
  
  end  
  
  # get '/users/sign_out' => "devise/sessions#destroy"
  
  

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
