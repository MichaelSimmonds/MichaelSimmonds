# This should take an array of cities and make api request, then parse json into a hash to be sent back to the controller to pass on to the view for display
require 'open-uri'
require 'json'

class API
  def initialize
    @info_hash = {}
  end

  def request_info(city_array)
    weather_array = []
    city_array.each do |city|
      city_name = city.name
      city_country = city.country_code
      api_key = "2f1d98af8fbad4555475734d284b1484"
      url = "http://api.openweathermap.org/data/2.5/forecast/city?q=#{city_name},#{city_country}&APPID=#{api_key}"
      weather_return = open(url).read
      weather_json = JSON.parse(weather_return)
      # puts weather_json
      # if weather_json['cod'] == "200" # CHECK THIS LINE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        temp = weather_json['list'][0]['main']['temp']
        weather = weather_json['list'][0]['weather'][0]['main']
        weather_array << "#{city_name} is #{temp-273} with #{weather}"
      # else
        # weather_array << ["ne data"]
      # end

    end
    return weather_array
  end

end


# uses city code "http://api.openweathermap.org/data/2.5/forecast/city?id=#{city_code}&APPID={APIKEY}"
# "http://api.openweathermap.org/data/2.5/forecast/city?q=#{city_name}&APPID={APIKEY}"
