Rails.application.routes.draw do
  resources :fridges do
    resources :foods
    resources :drinks
  end  
end
