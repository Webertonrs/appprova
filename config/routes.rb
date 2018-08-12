Rails.application.routes.draw do
  resources :add_institution_to_courses
  root 'welcome#index'
  resources :students
  resources :courses
  resources :institutions
  get 'home'=>'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
