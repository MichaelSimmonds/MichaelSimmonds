class View
  def initialize

  end

  def display_cities(city_array)
    if city_array.length <1
      puts "Please add a city to begin"
    else
      city_array.each_with_index do |city, index|
        puts "#{index+1}> #{city.name}"
      end
    end
  end

  def get_city_name
    puts "Please enter a city name and press enter"
    answer = gets.chomp
    while answer.length<4
      puts "less than 4 letters id invalid"
      answer = gets.chomp
    end
    return answer
  end

  def get_city_index
    puts "Please enter the number of the city to remove"
    return gets.chomp.to_i
  end

  def display_weather_info(info_hash)
    info_hash.each_with_index do |item, index|
      puts "#{index}>> #{item}"

    end
  end

  # def choose_city_id (city_id_arr)
  #   puts "Heres a list of possible cities"
  #   city_id_arr.each_with_index do |id, index|
  #     puts "#{index+1}> #{id}"
  #   end
  #   puts "Please select correct ID"
  #   return gets.chomp.to_i
  # end

end
