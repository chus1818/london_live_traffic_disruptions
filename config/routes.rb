require 'sidekiq/web'
require 'sidetiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: "/sidekiq"

  root 'pages#main'
end
