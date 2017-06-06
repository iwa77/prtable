Rails.application.routes.draw do
  devise_for :companies

  get 'stories' => 'stories#index'
  get 'stories/new'  =>  'stories#new' #ストーリー投稿画面
  post 'tweets'      =>  'tweets#create' #ストーリー投稿機能

  root 'stories#index'

  
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
