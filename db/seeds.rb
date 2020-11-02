# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Trial username

User.destroy_all
Trip.destroy_all
Place.destroy_all

# names = ['Canni', 'Angela', 'Soroosh', "Jen", "Shaun"]
# names.map{|name| User.create(username: name, password: '1234', password_confirmation: '1234', age: rand(20..30))}


# photo_urls =[
#     "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.avant.org.au%2FuploadedImages%2FContent%2FNews%2Ftravel-warnings-hero.jpg&imgrefurl=https%3A%2F%2Fwww.avant.org.au%2Fnews%2F20150804-travel-advice-and-warnings%2F&tbnid=FbPvQv6jecN8kM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygOegUIARC-AQ..i&docid=JDogXoyYgpwLYM&w=720&h=480&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygOegUIARC-AQ",
#     "https://www.google.com/imgres?imgurl=https%3A%2F%2Fhotelpetitpalacealcalatorre.com%2Fwp-content%2Fuploads%2F2019%2F01%2FTravel-Cover.jpg&imgrefurl=https%3A%2F%2Fhotelpetitpalacealcalatorre.com%2Fis-travel-cover-necessary-when-travelling-abroad%2F&tbnid=gXalWtgXjKNxmM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygaegUIARDbAQ..i&docid=og9TszhSRCmMxM&w=720&h=375&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygaegUIARDbAQ",
#     "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.allianztravelinsurance.com%2Fv_1438699359315%2Fmedia%2Ftravel%2Fplanning%2Funforeseen-event-coverage.jpg&imgrefurl=https%3A%2F%2Fwww.allianztravelinsurance.com%2Ftravel%2Fplanning%2Funforeseen-event-coverage.htm&tbnid=78elWzKnb_0WxM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygeegUIARDjAQ..i&docid=ZzE_Slr9JZQmEM&w=765&h=305&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygeegUIARDjAQ",
#     "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.livemint.com%2Frf%2FImage-621x414%2FLiveMint%2FPeriod2%2F2018%2F10%2F17%2FPhotos%2FProcessed%2Ftravel1-k4JF--621x414%40LiveMint.jpg&imgrefurl=https%3A%2F%2Fwww.livemint.com%2FMoney%2FDvPLujk01HwSNO5DaJweIK%2FLove-adventure-trips-Your-travel-insurance-policy-may-not-c.html&tbnid=h1BS4Ym8CSNULM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygjegUIARDtAQ..i&docid=IgKs3tALkRDOxM&w=621&h=414&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygjegUIARDtAQ",
#     "https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.addcovers.com%2Fcovers%2Fvnr0wprt9bvljkg.jpg&imgrefurl=http%3A%2F%2Fwww.addcovers.com%2Fcover%2Fvnr0wprt9bvljkg%2FTravel-the-World--facebook-cover&tbnid=0OWid4dsxuEyHM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygLegUIARC4AQ..i&docid=XsVuWrxTO4e2SM&w=851&h=315&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygLegUIARC4AQ",
#     "https://www.google.com/imgres?imgurl=http%3A%2F%2Frs-insurance.co.uk%2Fwp-content%2Fuploads%2F2014%2F07%2F04-Worldwide-Travel-Cover.jpg&imgrefurl=http%3A%2F%2Frs-insurance.co.uk%2Fhigh-net-worth%2Fworldwide-travel-cover%2F&tbnid=C600i5s4MJ6VgM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygDegUIARCoAQ..i&docid=SxhfUqmDegLGyM&w=1200&h=450&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygDegUIARCoAQ"
# ]
# photo_index = 0
# 5.times do
#     Trip.create(user: User.all.sample, caption: Faker::Quote.famous_last_words, cover_photo: photo_urls[photo_index] )
# end

user1 = User.create(username: "Canni", password: "1234", password_confirmation: "1234", age: 30, avatar: "https://photos.google.com/photo/AF1QipPwmTCsEvJSObLCjb7dqpBP0oXVlYPbjGQpaWt-")
trip1 = Trip.create(user: user1, caption: Faker::Quote.famous_last_words, cover_photo: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fwww.addcovers.com%2Fcovers%2Fvnr0wprt9bvljkg.jpg&imgrefurl=http%3A%2F%2Fwww.addcovers.com%2Fcover%2Fvnr0wprt9bvljkg%2FTravel-the-World--facebook-cover&tbnid=0OWid4dsxuEyHM&vet=12ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygLegUIARC4AQ..i&docid=XsVuWrxTO4e2SM&w=851&h=315&q=travel%20cover%20photo&ved=2ahUKEwjPoO2UyOTsAhVvZN8KHVYCCe8QMygLegUIARC4AQ")

