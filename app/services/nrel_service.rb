class NrelService
  def self.conn
    Faraday.new(:url => "https://api.data.gov") do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def self.station
    response = conn.get "/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['API_KEY']}&location=80203&fuel_type=ELEC,LPG&limit=10"
    JSON.parse(response.body)["fuel_stations"]
  end
end
