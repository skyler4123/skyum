# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Base.transaction do
  10.times do
    User.create(
      email: Faker::Internet.email,
      password: 'password',
      password_confirmation: 'password',
    )
  end
  ['grab', 'amazon', 'seven', 'shopee', 'lazada', 'adidas'].each do |branch|
    Branch.create(
      name: branch,
      nationality: Faker::Nation.nationality,
      established: rand(1900..1950),
      area: ['global', "america", 'euro', "asia"].sample,
      status: [0, 1].sample,
    )
  end
  10.times do
    Product.create(
      name: Faker::Device.model_name,
      unit_price: rand(20..200),
      branch: Branch.all.sample,
      status: [0, 1].sample,
    )
  end
  10.times do
    Card.create(
      qr_code: Faker::Barcode.isbn,
      branch: Branch.all.sample,
      user: User.all.sample,
      status: [0, 1].sample,
      amount: [10, 20, 50, 100].sample,
      expire_at: 30.days.from_now,
    )
  end
  Card.all.each do |card|
    Payment.create(
      card: card,
      status: card.status
    )
  end

end