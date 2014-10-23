Person.delete_all

person = Person.new
person.first_name = "Steven"
person.last_name = "Turek"
person.eye_color = "Blue"
person.date_of_birth = "28/11/1984"
person.height_in_inches = 63
person.awesome = false
person.save

person = Person.new first_name: "Chantelle",
  last_name: "LaCouture",
  eye_color: "Hazel",
  date_of_birth: "23/11/1980",
  height_in_inches: 54,
  awesome: true
person.save

person = Person.create({
  first_name: "Beckett",
  last_name: "Turek",
  eye_color: "Blue",
  date_of_birth: "06/05/2012",
  height_in_inches: 30,
  awesome: true
})

person = Person.new(
  :first_name => "Teagan",
  :last_name => "Turek",
  :eye_color => "Blue",
  :date_of_birth => "12/01/2014",
  :height_in_inches => 28,
  :awesome => true)
person.save

person = Person.new :first_name => "Sarah",
  :last_name => "Turek",
  :eye_color => "Blue",
  :date_of_birth => "02/12/1986",
  :height_in_inches => 60,
  :awesome => true
person.save

person = Person.new :first_name => "Shawn",
  :last_name => "Turek",
  :eye_color => "Green",
  :date_of_birth => "18/12/1989",
  :height_in_inches => 68,
  :awesome => true
person.save

first_name = ["Bill", "Frank", "Joe"]
last_name = ["Smith", "Johnson", "Jones"]
eye_color = ["Blue", "Green", "Hazel", "Brown", "Grey", "Seafoam"]
height_in_inches = [61, 62, 63, 64, 65, 66, 67, 68, 69, 70]

10.times do
  random_year = Random.new.rand(1900..2014)
  random_month =Random.new.rand(1..12)
  random_day  = Random.new.rand(1..30)
  person = Person.new :first_name => first_name.sample,
    :last_name => last_name.sample,
    :date_of_birth => "#{random_day}/#{random_month}/#{random_year}",
    :eye_color => eye_color.sample,
    :height_in_inches => height_in_inches.sample,
    :awesome => Random.new.rand(0..1)
  person.save
end
