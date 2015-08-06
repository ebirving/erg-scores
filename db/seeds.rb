# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Score.delete_all
Workout.delete_all
Profile.delete_all
User.delete_all


user1 = User.new
user1.email = 'coach@example.com'
user1.password = 'password'
user1.save!

user2 = User.new
user2.email = 'rower@example.com'
user2.password = 'password'
user2.save!

Profile.create(first_name: 'Jurgen', last_name: 'Grobler', club: 'Capital', program: 'Comp Women', role: 'Coach', user_id: user1.id)
a = Profile.create(first_name: 'Dennis', last_name: 'Wells', club: 'Capital', weight_class: 'Open Weight', birthday: '9/8/2014', gender: 'Male', program: 'SAW', role: 'Rower', user_id: user2.id)
b = Profile.create(first_name: 'Gerald', last_name: 'Washington', club: 'Capital', weight_class: 'Lightweight', birthday: '7/23/2015', gender: 'Male', program: 'Comp Men', role: 'Rower')
c = Profile.create(first_name: 'Donna', last_name: 'Ruiz', club: 'Capital', weight_class: 'Open Weight', birthday: '10/20/2014', gender: 'Female', program:'Club AM', role: 'Rower')
d = Profile.create(first_name: 'Andrea', last_name: 'Smith', club: 'Capital', weight_class: 'Lightweight', birthday: '5/19/2015', gender: 'Female', program: 'Comp Women', role: 'Rower')
e = Profile.create(first_name: 'Jesse', last_name: 'Mitchell', club: 'Capital', weight_class: 'Open Weight', birthday: '9/6/2014', gender: 'Male', program: 'Club PM', role: 'Rower')
f = Profile.create(first_name: 'Helen', last_name: 'Martin', club: 'Capital', weight_class: 'Lightweight', birthday: '8/2/2015', gender: 'Female', program: 'Comp Men', role: 'Rower')
g = Profile.create(first_name: 'Clarence', last_name: 'Henderson', club: 'Capital', weight_class: 'Open Weight', birthday: '7/8/2015', gender: 'Male', program: 'Comp Men', role: 'Rower')
h = Profile.create(first_name: 'Wayne', last_name: 'Robertson', club: 'Capital', weight_class: 'Open Weight', birthday: '1/26/2015', gender: 'Male', program: 'Club PM', role: 'Rower')
i = Profile.create(first_name: 'Robert', last_name: 'Williams', club: 'Capital', weight_class: 'Open Weight', birthday: '12/13/2014', gender: 'Male', program: 'Club AM', role: 'Rower')
j = Profile.create(first_name: 'Adam', last_name: 'Hunter', club: 'Capital', weight_class: 'Lightweight', birthday: '4/9/2015', gender: 'Male', program: 'Club AM', role: 'Rower')
k = Profile.create(first_name: 'Roger', last_name: 'Ellis', club: 'Capital', weight_class: 'Open Weight', birthday: '12/29/2014', gender: 'Male', program: 'Comp Men', role: 'Rower')
l = Profile.create(first_name: 'Shirley', last_name: 'Hayes', club: 'Capital', weight_class: 'Open Weight', birthday: '11/23/2014', gender: 'Female', program: 'Club AM', role: 'Rower')

pyramid = Workout.create(description: '30 minute rating pyramid: 20, 22, 24, 24, 22, 20', intensity: 'Training', name: '30 minute pyramid')
steady = Workout.create(description: '2 x 25min steady, 18-20spm', intensity: 'Recovery', name: 'Post-DSR workout')
two_k = Workout.create(description: '2k test', intensity: 'Benchmark', name: 'August 2k')

Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: a.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: b.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: c.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: d.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: e.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: f.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: g.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: h.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: i.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: j.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: k.id)
Score.create(interval_number: 1, minutes: 30, seconds: 0, distance: 3000, split: '2:15', spm: 22, workout_id: pyramid.id, profile_id: l.id)

Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: a.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: b.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: c.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: d.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: e.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: f.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: g.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: h.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: i.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: j.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: k.id)
Score.create(interval_number: 1, minutes: 6, seconds: 0, distance: 2000, split: '1:30', spm: 32, workout_id: two_k.id, profile_id: l.id)

Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: a.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: b.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: c.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: d.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: e.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: f.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: g.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: h.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: i.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: j.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: k.id)
Score.create(interval_number: 1, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: l.id)

Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: a.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: b.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: c.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: d.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: e.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: f.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: g.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: h.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: i.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: j.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: k.id)
Score.create(interval_number: 2, minutes: 25, seconds: 0, distance: 6000, split: '2:05', spm: 20, workout_id: steady.id, profile_id: l.id)
