namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = "example#{n+1}"
      password  = "password"
      User.create!(name: name,
                   password: password,
                   password_confirmation: password)
    end
  end
end
