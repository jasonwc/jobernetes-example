Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  post 'home/enqueue_now'
end
