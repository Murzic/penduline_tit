Penduline_tit::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
 
  resources :users do 
    resources :time_entries
  end
  resources :projects do 
    resources :time_entries
  end
end