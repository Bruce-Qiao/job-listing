Rails.application.routes.draw do

  resources :welcome do

  end

  resources :jobs do
    resources :resumes
  end

  devise_for :users

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end

      resources :resumes
    end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
