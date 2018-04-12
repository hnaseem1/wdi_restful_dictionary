Rails.application.routes.draw do
  get 'entries/index'

  get 'entries/new'

  get 'entries/edit'

  get 'entries/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :entries

end
