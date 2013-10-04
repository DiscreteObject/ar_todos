require_relative '../app/models/task'
require_relative '../config/application'

@random_boolean = [true, false]

10.times do
  Task.create!(:description => Faker::Company.catch_phrase, :complete => @random_boolean.sample)
end
