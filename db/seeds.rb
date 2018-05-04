require 'csv'

puts "Importing countries..."
CSV.foreach(Rails.root.join("country.csv"), headers: true) do |row|
  Countr.create! do |country|
    country.id = row[0]
    country.name = row[2]
  end
end

puts "Importing states..."
CSV.foreach(Rails.root.join("state.csv"), headers: true) do |row|
  Stat.create! do |state|
  	state.id = row[0]
    state.name = row[1]
    state.countr_id = row[2]
  end
end

puts "Importing cities..."
CSV.foreach(Rails.root.join("city.csv"), headers: true) do |row|
  City.create! do |city|
  	city.id = row[0]
    city.name = row[1]
    city.stat_id = row[2]
  end
end

puts "Importing Streams..."
CSV.foreach(Rails.root.join("stream.csv"), headers: true) do |row|
  Stream.create! do |stream|
    stream.id = row[0]
    stream.stream_name = row[1]
  end
end

puts "Importing Degrees..."
CSV.foreach(Rails.root.join("degree.csv"), headers: true) do |row|
  Degree.create! do |degree|
  	degree.id = row[0]
    degree.degree_name = row[1]
    degree.stream_id = row[2]
  end
end
Admin.create(email: 'superadmin@gmail.com', password: "Password@123", password_confirmation: "Password@123")

['school', 'teacher', 'student', 'vendor'].each do |role|
  Role.find_or_create_by({name: role})
end