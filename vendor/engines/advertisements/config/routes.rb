::Refinery::Application.routes.draw do
  resources :advertisements, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :advertisements, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
