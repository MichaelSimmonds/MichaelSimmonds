require 'pry-byebug'

def fullname (f_name, l_name)
  binding.pry
  f_name.capitalize
  binding.pry
  l_name.capitalize
  puts "#{f_name} #{l_name}"

end

fullname("mike", "sImmonds")

#gem install /9first use)
#require 'pye-byebug'
# use binding.pry to create break points
# remove all binding.pry and require before pushing code
