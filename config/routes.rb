# frozen_string_literal: true

Rails.application.routes.draw do
  resources :plot_plants, except: %i[new edit]
  resources :plants, except: %i[new edit]
  resources :plots, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  patch '/plots/:id/add-plant' => 'plots#add_plant'
  patch '/plots/:id/remove-plant' => 'plots#delete_plant'
end
