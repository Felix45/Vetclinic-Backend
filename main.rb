require_relative 'animal'
require_relative 'dog'
require_relative 'spider'
require_relative 'owner'
require_relative 'visit'
require_relative 'vet'

dog = Dog.new('Snowie', 4, 'White')
spider = Spider.new('Spiddo', 8, 'Strong')

vet_maria = Vet.new('Maria', 'New York')
vet_john = Vet.new('John', 'San Fransisco')

first_visit = Visit.new('2017-12-22', dog, vet_maria)
second_visit = Visit.new('2017-12-31', dog, vet_maria)

puts("Dog visit count: #{dog.visits.count}")
dog.visits.map { |visit| puts("Date: #{visit.date} Vet: #{visit.vet.name}")}

puts("Vet John visit count: #{vet_john.visits.count}")
puts("Vet Maria visit count: #{vet_maria.visits.count}")
vet_maria.visits.map { |visit| puts("Date: #{visit.date} Vet: #{visit.animal.name}")}

visit_3 = Visit.new("2017-11-11", spider, vet_john)
visit_4 = Visit.new("2017-10-10", spider, vet_maria)

puts("Spider visit count: #{spider.visits.count}")
spider.visits.map { |visit| puts("Date: #{visit.date} Vet: #{visit.vet.name}")}

puts("Vet John visit count: #{vet_john.visits.count}")
vet_john.visits.map { |visit| puts("Date: #{visit.date} Vet: #{visit.animal.name}")}

puts("Vet Maria visit count: #{vet_maria.visits.count}")
vet_maria.visits.map { |visit| puts("Date: #{visit.date} Vet: #{visit.animal.name}")}
