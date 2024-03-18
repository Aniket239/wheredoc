Rails.application.routes.draw do
  root 'setup#index'

  get 'company/index'
  get 'company/create'
  get 'company/new'
  get 'company/delete'
  get 'company/update'
  get 'company/edit'
  post 'company/index'
  post 'company/create'
  post 'company/new'
  post 'company/delete'
  post 'company/update'
  post 'company/edit'

  get 'department/index'
  get 'department/create'
  get 'department/new'
  get 'department/delete'
  get 'department/update'
  get 'department/edit'
  post 'department/index'
  post 'department/create'
  post 'department/new'
  post 'department/delete'
  post 'department/update'
  post 'department/edit'

  get 'setup/login'
  post 'setup/login'
  get 'setup/logout'
  post 'setup/logout'
  get 'setup/employees'
  post 'setup/employees'
  get 'setup/signup'
  post 'setup/signup'
  post 'setup/create'
  post 'setup/delete'
  get 'setup/delete'
  get 'setup/edit'
  post 'setup/edit'
  get 'setup/update'
  post 'setup/update'

  get 'document/index'
  post 'document/index'
  get 'document/new'
  post 'document/new'
  get 'document/edit'
  post 'document/edit'
  get  'document/create'
  post 'document/create'
  get 'document/delete'
  post 'document/delete'
  get 'document/alldocuments'
  post 'document/alldocuments'

end
