class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "welcome to weather"

    while @running == true
      display_options
      action = gets.chomp.to_i
      puts 'clear'
      route_action(action)
    end
  end


  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then @controller.list_info
    when 5 then stop
    end
  end

  def stop
    @running = false
  end

  def display_options
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all cities"
    puts "2 - Add new city"
    puts "3 - Remove a city"
    puts "4 - Display weather at all cities"
    puts "5 - Stop and exit the program"
  end


end
