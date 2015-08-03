# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Workout.create(training_band: 'UT2', description:'2 x 25 minutes, 60% pressure', intensity: 'recovery')
Workout.create(training_band: 'UT1', description:'3 x 10 minutes', intensity: 'training')
Workout.create(training_band: 'AT', description:'2k piece', intensity: 'benchmark')
