EpochChart::Application.routes.draw do
  resources :charts, :data

  match "/chart/:id/embed" => 'charts#embed', as: "embed"
  match "/data/:id/calendar" => 'data#calendar', as: "calendar_data"

  match "/how-to" => 'charts#howto', as: "howto"

  root :to => 'charts#landing'
end
