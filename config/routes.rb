EpochChart::Application.routes.draw do
  resources :chart, :data

  match "/chart/:id/embed" => 'chart#embed', as: "embed"
  match "/data/:id/calendar" => 'data#calendar'

  root :to => 'chart#new'
end
