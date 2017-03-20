require_relative "weather_api"
require_relative "city_id_finder"
require_relative "view"
require "pp"


class Controller
  def initialize(citydb)
    @citydb = citydb
    @view = View.new
    @api = API.new
    @finder = Id_finder.new
  end

  def list
    #ask repo for all cities (arr format)
    citylist = @citydb.list_cities
    # ask view to display cities
    @view.display_cities(citylist)
  end

  # def find_city_id(city_name)
  #   #ask finder to find city ID
  #   city_id = @finder.find_id(city_name)
  #   # if more than one item in array send array to view
  #   # puts city_id
  #   # if city_id.length>1
  #   #   chosen_city = @view.choose_city_id(city_id)
  #   #   city_id = city_id[chosen_city]
  #   #   @citydb.add_city(new_city_name, city_id)
  #   # else
  #   #   #ask repo to add a City
  #   #   city_id = city_id.split("")
  #   # end
  # end

  def create
    # ask view to ask user to input new city name
    new_city_name = @view.get_city_name
    #ask find city id function to return the correct city_id
    # city_id = find_city_id(new_city_name)
    #ask city db to add city to array
    @citydb.add_city(new_city_name, "GB")
  end

  def destroy
    #ask view which number city  to delete
      rem_city_index = @view.get_city_index
    #ask repo to delete city
      @citydb.remove_city(rem_city_index)
  end

  def list_info
    #ask repo for all cities arr format
    citylist = @citydb.list_cities
    #ask API to loop thru array finding the temp and build an info hash for each city
    city_info_hash = @api.request_info(citylist)
    # return city_info_hash
    #ask view to display citis with info
    @view.display_weather_info(city_info_hash)
  end

end
