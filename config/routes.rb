EpochChart::Application.routes.draw do
  resources :chart
  root :to => 'chart#new'
end
