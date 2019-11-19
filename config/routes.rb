Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  post 'questions/create'
  root "identities#index"
  get 'identities/choice' => "identities#choice"
  get 'questions/choice' => "questions#choice"
  get 'identities/receiver' => "identities#receiver"
  post 'identities/answer' => "identities#answer"
  get 'identities/feedback'
  
  # get '/users/sign_out' => "devise/sessions#destroy"
  
  resources :identities do
    resources :questions, only: [:create, :destroy]
end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
