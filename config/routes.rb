Rails.application.routes.draw do
  get 'employee/index'
  get 'employee/vcard', to: 'employee#vcard', as: 'button'
end
