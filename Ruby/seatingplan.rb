require 'yaml'
require 'highline/import'
require 'pry'
require 'io/console'
def multiline
  puts " "
  puts " "
end
loop do
  choose do |menu|

  menu.shell  = true
 menu.prompt = "\nPlease choose an option by typing in the number"
  
    menu.choice("Open the names file") do
     puts "\nOpening the file......" 
     `start names.yml`
     multiline
    end
    
    menu.choice("Randomize seating plan") do 
      
      file = File.open('names.yml')
      data = YAML::load(file)
      
      array = data.to_a
      puts "--------------------------------"
      puts "Testing Circle Ltd Seating Plan"
      puts "--------------------------------"
      puts array.shuffle
      multiline
    end
    
    menu.choice("Exit program"){ exit }
    end
end

