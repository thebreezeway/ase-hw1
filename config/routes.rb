Rails.application.routes.draw do
  get 'firstcontact/hello'

  get 'firstcontact/goodbye'



  root "firstcontact#hello"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
