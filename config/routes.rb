EpochChart::Application.routes.draw do
  resources :charts, :data

  match "/chart/:id/embed" => 'charts#embed', as: "embed"
  match "/data/:id/calendar" => 'data#calendar'

  root :to => 'charts#landing'
end
