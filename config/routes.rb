Rails.application.routes.draw do
  namespace :api do
	    namespace :v1 do
	      resources :bot_details do
	      	get 'search', on: :collection
	      end
	      root to: 'bot_details#index'
	    end
	  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
