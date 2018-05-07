Rails.application.routes.draw do

  root 'welcome#home'

  resources :users, only: [:new, :create]

  resources :multistep_form
  

  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/services'

  get 'welcome/contact'

  get 'welcome/FAQ'


end
