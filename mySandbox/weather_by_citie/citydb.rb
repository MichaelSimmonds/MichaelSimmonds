require "csv"
require_relative "city"

class Citydb
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @city_array = []
    read_csv
  end

  def list_cities
    @city_array
  end

  def add_city(city_name, country_codes)
    # add city to array and write csv
    @city_array << City.new(city_name, country_codes)
    write_csv
  end

  def remove_city(city_index)
    # remove city from array and write csv
    city_index -= 1
    @city_array.delete_at(city_index)
    write_csv
  end

  def write_csv
    CSV.open(@csv_file_path, "wb") do |row|
      @city_array.each do |city|
        row << [city.name, city.country_code]
      end
    end
  end

  def read_csv
    CSV.foreach(@csv_file_path) do |row|
      @city_array << City.new(row[0], row[1])
    end
  end

end
