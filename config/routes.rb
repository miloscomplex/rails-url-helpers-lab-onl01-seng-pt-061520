Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'students', to: 'students#index'

  # get 'students/:id', to: 'students#show'
  # such bs ^ this does exactly the same thing
  resources :students, only: :show

  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'

end
