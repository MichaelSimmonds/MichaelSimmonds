require "json"
require "pp"

data = '{"_id":2508813,"name":"Adrar","country":"DZ","coord":{"lon":-0.29388,"lat":27.87429}},{"_id":2151649,"name":"Richmond","country":"AU","coord":{"lon":145.001755,"lat":-37.818192}},'
new_data = ""
2.times do
new_data = data.gsub(/coord.*}},/ , '')
end

# pp data
pp new_data
