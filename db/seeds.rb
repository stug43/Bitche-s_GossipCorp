City.destroy_all
User.destroy_all
Comment.destroy_all
Like.destroy_all
PrivateMessage.destroy_all
Gossip.destroy_all
GossipTagList.destroy_all
Tag.destroy_all

20.times do |index|
	city = City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Number.number(5))
end

50.times do |index|
	user = User.create!(city: City.all.sample, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: rand(80), description: Faker::String.random(15..50))
end

10.times do |index|
	tag = Tag.create!(title: Faker::Cannabis.buzzword, color: Faker::Color.color_name)
end

130.times do |index|
	gossip = Gossip.create!(user: User.all.sample, title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraphs(2, 7))
end

50.times do |index|
	comment = Comment.create!(user: User.all.sample, gossip: Gossip.all.sample, content: Faker::RickAndMorty.quote)
end

65.times do |index|
	like = Like.create!(user: User.all.sample, gossip: Gossip.all.sample)
end

175.times do |index|
	gossip_tag_list = GossipTagList.create!(gossip: Gossip.all.sample, tag: Tag.all.sample)
end

325.times do |index|
	randomizer = rand(357)
	if randomizer%2 == 0
		private_message = PrivateMessage.create!(sender: User.all.sample, recipient: User.all.sample, content: Faker::Movie.quote)
	else
		(randomizer > 150 ? private_message = PrivateMessage.create!(sender: User.all.sample, recipient: User.all.sample, content: "Marijuanga #{Faker::Cannabis.health_benefit}.") : private_message = PrivateMessage.create!(sender: User.all.sample, recipient:
 User.all.sample, content:Faker::MostInterestingManInTheWorld.quote))
	end
end
