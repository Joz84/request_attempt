# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


f1 = First.create(name: "a")
s1 = Second.create(name: "b", first: f1)
t1 = Third.create(name: "b", first: f1)

f2 = First.create(name: "a")
s2 = Second.create(name: "c", first: f2)
t2 = Third.create(name: "c", first: f2)

f3 = First.create(name: "a")
s3 = Second.create(name: "b", first: f3)
t3 = Third.create(name: "c", first: f3)
