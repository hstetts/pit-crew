Rails.application.routes.draw do

  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/services'

  get 'welcome/contact'

  get 'welcome/FAQ'

  resources :users, only: [:new, :create]
  resources :multistep_form

  root 'welcome#home'


end
