# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p "RUNNING SEED FILE"

test_status_vids = [["sleeping", "zFhPhaKOC60"], ["bored", "sXfhyFqsMvE"], ["depressed", "wJ1jc_85VYg"]]

test_action_vids = [["discipline", "05-o80xRHQQ"], ["encourage", "vxpYUATrIrQ"]]

test_status_vids.each do | x |
  Status.create({
    title: x[0],
    url: x[1]
    })
end

test_action_vids.each do | y |
  Action.create({
    title: y[0],
    url: y[1]
    })
end