Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :promos do
    resources :promos, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :promos, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :promos, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
