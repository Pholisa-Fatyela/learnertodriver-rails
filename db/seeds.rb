models =  %w( answer question quiz comment post user)

puts "... deleting all existing data 🗑"
  
  models.each { |m|
    m.camelize.constantize.delete_all
  }
  
  # seed_modules
  
  puts "... seeding new data 💾"
  models.reverse.each do |data|
    require File.expand_path(File.dirname(__FILE__))+"/seeds/modules/#{ data }.rb"
  end

models.each { |m|
  puts "#{ m.camelize.constantize.count } #{ m.pluralize } created"
}
