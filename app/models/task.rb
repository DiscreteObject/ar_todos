require_relative '../../config/application'

class Task < ActiveRecord::Base

  def self.all_descriptions
    Task.all.map do |task|
      task.description
    end
  end

  def complete!
    self.complete = true
    self.save
  end

end

