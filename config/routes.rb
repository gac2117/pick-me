Rails.application.routes.draw do
	namespace :api do
	  resources :restaurants
	  resources :tags
	end
end
