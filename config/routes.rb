#Gaku::Core::Engine.routes.prepend do
Gaku::Core::Engine.routes.draw  do

  namespace :admin do
    resources :tests, only: :index
  end

end
