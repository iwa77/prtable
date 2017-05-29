Rails.application.routes.draw do
  devise_for :companies

    Rails.application.routes.draw do
    get 'stories' => 'stories#index'
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
