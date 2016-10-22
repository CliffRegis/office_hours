Rails.application.routes.draw do
  resource  :session

  resources :videos do
    resources :comments
  end

end
