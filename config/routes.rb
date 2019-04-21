Rails.application.routes.draw do
  get 'static_pages/leher'
  root 'static_pages#leher'
  get '/preference', to: 'static_pages#preference'
  get '/zerosum', to: 'static_pages#zerosum'
end
