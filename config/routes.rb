Cosc578app::Application.routes.draw do

  resources :daily_data_payments

  root 'static_pages#index'

  get 'employee_searches' => 'employee_searches#index'
  post 'employee_searches/find_emp' => 'employee_searches#find_emp'
  post 'employee_searches/find_active' => 'employee_searches#find_active'
  post 'employee_searches/find_indiv_hours_worked' => 'employee_searches#find_indiv_hours_worked'
  get 'resource_searches' => 'resource_searches#index'
  post 'resource_searches/find_resource_by_title' => 'resource_searches#find_resource_by_title'
  post 'resource_searches/find_resource_by_receipt_number' => 'resource_searches#find_resource_by_receipt_number'
  post 'resource_searches/find_school_by_name' => 'resource_searches#find_school_by_name'
  post 'resource_searches/find_school_by_student' => 'resource_searches#find_school_by_student'
  post 'resource_searches/find_students_at_school' => 'resource_searches#find_students_at_school'
  post 'resource_searches/find_books_by_student' => 'resource_searches#find_books_by_student'

  get 'student_searches' => 'student_searches#index'
  post 'student_searches/remaining_hours' => 'student_searches#remaining_hours'
  post 'student_searches/used_hours_over_time_period' => 'student_searches#used_hours_over_time_period'
  post 'student_searches/student_payments' => 'student_searches#student_payments'
  post 'student_searches/group_hours' => 'student_searches#group_hours'

  get 'student_searches/student_relatives' => 'student_searches#student_relatives'
  post 'student_searches/find_guardians' => 'student_searches#find_guardians'
  post 'student_searches/find_siblings' => 'student_searches#find_siblings'

  get 'static_pages/about' => 'static_pages#about'

  get 'students/search' => 'students#search'
  post 'students/search' => 'students#search_results'

  get 'employees/search' => 'employees#search'
  post 'employees/search' => 'employees#search_results'

  get 'contracts/find_student' => 'contracts#find_student'
  post 'contracts/select_student' => 'contracts#select_student'

  resources :daily_data_form_presenters

  resources :suppliers

  resources :supplies

  resources :employee_contracts

  resources :student_hour_transfers

  resources :daily_data

  resources :resources

  resources :contracts

  resources :payments

  resources :sessions

  resources :employees

  resources :siblings

  resources :schools

  resources :guardians

  resources :books

  resources :students

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
