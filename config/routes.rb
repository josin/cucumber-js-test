CucumberJsTest::Application.routes.draw do
  root to: "home#index"

  resources :home, only: [:index] do
    get :subdomain, on: :collection
  end
end
