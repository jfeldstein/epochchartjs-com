namespace :app do

  # Populates development data
  desc "Ping servers so Heroku does not idle them."
  task :keepalive => :environment do
    uri = URI.parse('http://epochchartjs.com')
    Net::HTTP.get_response(uri)
  end

end