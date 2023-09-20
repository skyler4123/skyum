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
  5.times do
    Customer.create(
      user: User.all.sample
    )
  end
  ["phone", "laptop", "book", "speaker", "headphone", "camera"].each do |category|
    Category.create(
      name: category,
    )
  end
  5.times do
    Branch.create(
      name: Faker::Device.manufacturer,
      established: rand(1900..1950),
      nationality: ["america", "japan", "canada", "france", "china"].sample,
      is_global_company: [true, false].sample,
      status: [0, 1].sample,
    )
  end
  5.times do
    shop_owner = ShopOwner.create(
      user: User.all.sample,
    )
    Shop.create(
      name: Faker::Name.name,
      shop_owner: shop_owner,
    )
  end
  10.times do
    Order.create(
      customer: Customer.all.sample,
      status: [0, 1].sample
    )
  end
  # 25.times do
  #   Product.create(
  #     name: Faker::Device.model_name,
  #     unit_price: rand(20..200),
  #     branch: Branch.all.sample,
  #     category: Category.all.sample,
  #     status: [0, 1].sample,
  #   )
  # end

end