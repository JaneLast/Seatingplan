require 'yaml'
require 'io/console'
require 'pry'

file = File.open('names.yml')
data = YAML::load(file)
puts data
