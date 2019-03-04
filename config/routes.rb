Rails.application.routes.draw do


  get 'users/new'

  get 'home/index'
  get 'faq', to: "home#faq", as: 'faq'
  resources :services
  get '/service_index_admin', to: 'services#index_admin'
  get '/functional_evaluation', to: 'services#functional_evaluation'
  get '/cost_of_future_care', to: 'services#cost_of_future_care'
  get '/medical_legal_consultation', to: 'services#medical_legal_consultation'
  get '/community_rehabilitation', to: 'services#community_rehabilitation'
  get '/physiotherapy', to: 'services#physiotherapy'
  get '/functional_conditioning', to: 'services#functional_conditioning'
  get '/interdisciplinary_rehabilitation', to: 'services#interdisciplinary_rehabilitation'
  get '/job_demands_analyses', to: 'services#job_demands_analyses'
  get '/ergononmic_risk_factor_analyses', to: 'services#ergononmic_risk_factor_analyses'
  get '/clinical_counselling_services', to: 'services#clinical_counselling_services'
  get '/psychology_assessment', to: 'services#psychology_assessment'
  resources :about_us, only: [:index]
  resources :testimonials
  resources :careers, only: [:index, :show]
  resources :contacts
  get '/surrey', to: "contacts#surrey"
  get '/vancouver', to: "contacts#vancouver"
  get '/coquitlam', to: "contacts#coquitlam"
  get '/abbotsford', to: "contacts#abbotsford"
  get '/victoria', to: "contacts#victoria"
  get '/nanaimo', to: "contacts#nanaimo"

  resources :admin_dashboard, only: [:index]
  resources :our_teams
  get '/office_administration', to: "our_teams#office_administration"
  get '/occupational_therapists', to: "our_teams#occupational_therapists"
  get '/physiotherapists', to: "our_teams#physiotherapists"
  get '/kinesiologist', to: "our_teams#kinesiologist"
  get '/psychology', to: "our_teams#psychology"
  get '/counsellors', to: "our_teams#counsellors"
  resources :users
  resources :admin_teams
  get '/index_original', to: "admin_teams#index_original"
  post 'team_archive/:id', to: "admin_teams#archive", as:'team_archive'
  resources :members
  resources :admin_careers
  resources :admin_testimonials
  resources :admin_enquiries
  resources :job_applications

  post 'testimonial_archive/:id', to: "admin_testimonials#archive", as:'testimonial_archive'
  post 'careers_archive/:id', to: "admin_careers#archive", as:'career_archive'

  resources :admin_enquiries
  resources :referrals

  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :admin_referrals
  resources :locations

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
