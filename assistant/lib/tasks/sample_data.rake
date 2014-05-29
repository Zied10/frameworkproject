namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 password: "foobar",
                 password_confirmation: "foobar",
		 admin: true)
    99.times do |n|
      name  = "example#{n+1}"
      password  = "password"
      User.create!(name: name,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit: 6)
    50.times do |n|
      name = "personnes#{n+1}"
      scene_id = 1
      users.each { |user| user.persones.create!(name: name, scene_id: scene_id) }
    end
  end
end
