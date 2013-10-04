require_relative '../config/application'

class Viewer
  def self.display_string_to_console(string)
    puts output
  end

  #Assumes an array of strings
  def self.display_array_to_console(array)
    array.each_index { |idx| puts "#{idx+1}:  #{array[idx]}" }
  end
end

class ListController

  def self.parse(arguments_array)
    command = arguments_array[0]

    case command
    when "list"
      Viewer.display_array_to_console(Task.all)
    when "add"


    when "delete"

    when "complete"

    end

  end
# list



#add
#delete
  


end
