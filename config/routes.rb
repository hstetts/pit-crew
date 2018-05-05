Rails.application.routes.draw do
  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/services'

  get 'welcome/contact'
  
  get 'welcome/FAQ'

  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
