User.create!(email: "jedi@launchlabs.ph",
             password:              "123123123",
             password_confirmation: "123123123")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@launchlabs.ph"
  password = "password"
  User.create!(email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end