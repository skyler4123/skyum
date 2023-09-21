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
      shop: Shop.all.sample,
      status: [0, 1].sample,
    )
  end
  10.times do
    Product.create(
      name: Faker::Device.model_name,
      unit_price: rand(20..200),
      branch: Branch.all.sample,
      category: Category.all.sample,
      status: [0, 1].sample,
      shop: Shop.all.sample,
    )
  end
  50.times do
    product = Product.all.sample
    OrderProduct.create(
      order: Order.all.sample,
      product: product,
      status: [0, 1].sample,
      unit_price: product.unit_price,
      quantity: rand(1..4),
    )
  end
  ['paypal', 'stripe', 'mastercard', 'visa'].each do |payment_partner|
    PaymentPartner.create(
      name: payment_partner,
    )
  end
  10.times do
    GiftCard.create(
      qr_code: Faker::Barcode.isbn,
      shop: Shop.all.sample,
      status: [0, 1].sample,
      amount: [10, 20, 50, 100].sample,
      expire_at: 30.days.from_now,
    )
  end

  # Seed Payment
  Order.all.each do |order|
    total_amount = order.order_products.select("(unit_price * quantity) AS amount").inject(0) {|sum, order| sum + order.amount}
    gift_card = GiftCard.all.sample
    is_cod_payment = [true, false].sample
    Payment.create(
      total_amount: total_amount,
      gift_card: gift_card,
      remain_amount: (total_amount - gift_card.amount).abs,
      order: Order.all.sample,
      status: [0, 1].sample,
      is_cod_payment: is_cod_payment,
      payment_partner: is_cod_payment ? nil : PaymentPartner.all.sample
    )
  end

end