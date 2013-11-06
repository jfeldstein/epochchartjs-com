namespace :app do

  # Populates development data
  desc "Ping servers so Heroku does not idle them."
  task :keepalive => :environment do
    HTTParty.get 'http://epochchartjs.com'
  end

end