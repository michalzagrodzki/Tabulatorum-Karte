# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# List of template stories
story_list = [
    ["Malta", 35.882056, 14.447462 ],
    ["Cinque Terre", 44.127062, 9.707102 ],
    ["Wicklow Way", 53.083510, -6.256211 ]
]

# loop for putting story_list into db
story_list.each do |name, lat, lng |
  Story.create( name: name, latitude: lat, longitude: lng )
end
