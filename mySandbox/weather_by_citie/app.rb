require_relative "citydb"
require_relative "controller"
require_relative "router"

csv_file   = "cities_csv.csv"
citydb   = Citydb.new(csv_file)
controller = Controller.new(citydb)

router = Router.new(controller)

# Start the app
router.run
