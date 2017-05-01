Rails.application.routes.draw do
  root 'home#index'
  post :convert, to: 'home#convert'
end
