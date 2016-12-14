class Nrel
  def self.stations
    NrelService.station.map do |raw_stations|
      Station.new(raw_stations)
    end
  end
end
