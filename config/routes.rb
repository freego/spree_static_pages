Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :pages do
      collection do
        post :update_positions
      end
    end
  end

  resources :pages, only: :show, path: 'p'
end
