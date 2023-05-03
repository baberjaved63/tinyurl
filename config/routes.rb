Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "url_tokens#new"

  resources :url_tokens, only: %i[index new create show] do
  end

  get :launch, to: "url_tokens#launch", as: :launch
end
