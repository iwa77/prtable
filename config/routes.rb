Rails.application.routes.draw do
  devise_for :companies

  get 'stories' => 'stories#index'


  root 'stories#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
