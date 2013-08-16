# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create
provider = Provider.create

default_values = {'name': 'string', 'date of birth': 'date', 'eye color': 'string', 'gender': 'string', 'weight': 'integer', 'height': 'integer'}


default_values.each do |key, value|
	Field.create(default_value: key, type: value)
end

5.times do |form|
	Form.create(provider_id: provider_id, name: 'patient' + form.to_s)
end

fields = Field.all

3.times do |form|
	