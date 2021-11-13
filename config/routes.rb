Rails.application.routes.draw do
  root to: 'cases#new'
  get '/goodbye', to: 'cases#goodbye'
end
