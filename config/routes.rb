Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'identities/feedback' => "identities#feedback"

  
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
  end  
  
  # get '/users/sign_out' => "devise/sessions#destroy"
  
  

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
