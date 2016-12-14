class Station
  attr_reader: :station_name,
               :street_address,
               :fuel_type_code,
               :distance,
               :access_days_time

  def initialize(raw_stations)
    @station_name = raw_stations["station_name"]
    @street_address = raw_stations["street_address"]
    @fuel_type_code = raw_stations["fuel_type_code"]
    @distance = raw_stations["distance"]
    @access_days_time = raw_stations["access_days_time"]
  end
end
