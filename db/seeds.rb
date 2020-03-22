# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_users
  User.create(
    first_name: "master",
    last_name: "admin",
    username: "admintest",
    email: "admin@test.com",
    password: '123456',
    password_confirmation: '123456',
    role: 'teacher'
  )

  user_id = 1

  10.times do 
    User.create(
      first_name: "first#{user_id}",
      last_name: "last#{user_id}",
      username: "username-#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id = user_id + 1
  end
end


def seed_categories
  programming = %w[HTML Javascript Ruby RubyOnRails]
  design = %w[CSS Bootstap]
  databases = %w[MySQL PostgreSQL]
  tools = %w[Git]
  
  programming.each do |name|
    Category.create(branch: 'programming', name: name)
  end

  design.each do |name|
    Category.create(branch: 'design', name: name)
  end

  databases.each do |name|
    Category.create(branch: 'databases', name: name)
  end

  tools.each do |name|
    Category.create(branch: 'tools', name: name)
  end
end

def seed_courses
  categories = Category.all

  categories.each do |category|
    5.times do
      Course.create(
        title: Faker::Lorem.sentences[0], 
        description: Faker::Lorem.sentences[0], 
        user_id: rand(1..9), 
        category_id: category.id,
        classes_number: rand(1..5),
        price: rand(2000..4000),
        students_number: rand(5..15),
        status: ['not started', 'started', 'finished', 'on hold', 'cancelled'].sample,
        start_date: Date.today,
        end_date: Date.today + 1.month
      )
    end
  end
end

puts 'Creating users'
seed_users

puts 'Creating categories'
seed_categories

puts 'Creating courses'
seed_courses
