Rails.application.routes.draw do
  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/services'

  get 'welcome/contact'

  get 'welcome/FAQ'

  resources :appointment

  root 'welcome#home'


end
