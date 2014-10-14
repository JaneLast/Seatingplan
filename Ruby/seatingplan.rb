require 'yaml'
require 'highline/import'
require 'pry'

loop do
  choose do |menu|

  menu.layout = :menu_only
    menu.choice(:open, "Open the names file") do 
      File.open("names.yml", 'r+')
    end
    
    menu.choice(:load, "Randomize seating plan") do 
      
    file = File.open('names.yml')
    data = YAML::load(file)
    
    array = data.to_a
    puts array.shuffle
    end
    menu.choice(:quit, "Exit program") { exit }
  end
end