require_relative '../../config/application'

class Viewer
  def self.display_string_to_console(string)
    puts string
  end

  #Assumes an array of strings
  def self.display_array_to_console(array)
    array.each_index { |idx| puts "%2s:  %s" % [idx + 1, array[idx]] } # "#{idx+1}:  #{array[idx]}" }
  end
end

class ListController

  def self.run!(arguments_array)
    command = arguments_array[0]

    case command
    when "list"
      Viewer.display_array_to_console(Task.all_descriptions)
    when "add"
      new_command = arguments_array[1..-1].join(' ')
      Viewer.display_string_to_console("Appended '#{new_command}' to your TODO list...")
      Task.create!(description: new_command)
    when "delete"
      task_to_delete = Task.find(arguments_array[1].to_i)
      Viewer.display_string_to_console("Deleted '#{task_to_delete.description}' from your TODO list... ")
      task_to_delete.destroy
    when "complete"
      task_to_complete = Task.find(arguments_array[1].to_i)
      Viewer.display_string_to_console("'#{task_to_complete.description}' marked as complete! YOU ARE SO PRODUCTIVE.")
      task_to_complete.complete!
    end

  end

end
