# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Ahoy.geocode = false
# ahoy = Ahoy::Tracker.new(request: RequestFaker.new)
10.times do
  post = Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 2)
  )
  # rand(15..100).times do
  #   puts 'Tracking'
  #
  #   visit = Ahoy::Visit.create!(visit_token: Faker::Alphanumeric.alpha(number: 10))
  #   Ahoy::Event.create!(name: 'Ran action',
  #                       properties: {
  #                         controller: 'posts',
  #                         action: 'show',
  #                         id: post.id
  #                       },
  #                       visit:,
  #                       time: Faker::Time.between(from: 24.hours.ago, to: Time.now))
  # end
end
