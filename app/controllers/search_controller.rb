class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: => "https://api.data.gov")
  end
end
