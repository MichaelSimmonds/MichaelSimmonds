require "json"


class Id_finder
  def initialize
    @file = File.read("city.list.json")
  end

  def find_id(city)
    file_hash = JSON.parse(@file)
    # file_hash.values_at(city)
    return "balls"
  end



end
