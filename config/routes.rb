Rails.application.routes.draw do

  #define root, se chamar no nome do site irá para esse controller e pagina
  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'
  #default route
  #may go away in future versions of Rails
  #get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
