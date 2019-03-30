Rails.application.routes.draw do
  get 'static_pages/leher'
  root 'application#hello'
end
