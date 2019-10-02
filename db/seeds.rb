# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tea.destroy_all
Shop.destroy_all
User.destroy_all
ShopReview.destroy_all
Recommendation.destroy_all
Tea.reset_pk_sequence
Shop.reset_pk_sequence
User.reset_pk_sequence
ShopReview.reset_pk_sequence
Recommendation.reset_pk_sequence

vivis_c = Shop.create(name: "Vivi's Bubble Tea", location: "Chinatown", address: "49 Bayard St. NY, NY 10013")
kft_c = Shop.create(name: "Kung Fu Tea", location: "Chinatown", address: "234 Canal St. NY, NY 10013")
vivis_b = Shop.create(name: "Vivi's Bubble Tea", location: "Bensonhurst", address: "2169 86th St. Brooklyn, NY 11214")
kft_b = Shop.create(name: "Kung Fu Tea", location: "Bensonhurst", address: "2174 86th St. Brooklyn, NY 11214")
gongcha_m = Shop.create(name: "Gong Cha", location: "Midtown Manhattan", address: "75 W 38th St. NY, NY 10018")
gongcha_b = Shop.create(name: "Gong Cha", location: "Sunset Park", address: "5723 8 Ave. Brooklyn, NY 11220")


jasmine_vb = Tea.create(name: "Jasmine Tea", price: 4.5, shop_id: vivis_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
jasmine_vc = Tea.create(name: "Jasmine Tea", price: 4.5, shop_id: vivis_c.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
jasmine_kb = Tea.create(name: "Jasmine Tea", price: 4.5, shop_id: kft_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
jasmine_kc = Tea.create(name: "Jasmine Tea", price: 4.5, shop_id: kft_c.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
jasmine_gm = Tea.create(name: "Jasmine Tea", price: 4.5, shop_id: gongcha_m.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
jasmine_gb = Tea.create(name: "Jasmine Tea", price: 4.5, shop_id: gongcha_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
earl = Tea.create(name: "Earl Grey Tea", price: 4.0, shop_id: vivis_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
three_j = Tea.create(name: "3 J's Tea", price: 4.5, shop_id: vivis_c.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
honeydew = Tea.create(name: "Honeydew Milk Tea", price: 4.5, shop_id: vivis_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
mango = Tea.create(name: "Mango Slush", price: 4.25, shop_id: kft_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
milk = Tea.create(name: "Plain Milk Tea", price: 3.25, shop_id: gongcha_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
redbean = Tea.create(name: "Red Bean Slush", price: 4.5, shop_id: kft_c.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
herbal = Tea.create(name: "Milk Tea w/ Herbal Jelly", price: 4.5, shop_id: gongcha_m.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
lemon_kb = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: kft_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
lemon_vc = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: vivis_c.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
lemon_vb = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: vivis_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")
lemon_gb = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: gongcha_b.id, img_url: "http://www.thirstyfortea.com/wp-content/uploads/2016/08/jasmine-milk-tea-with-honey-boba-5.jpg")

benny = User.create(username: "benben", password: "benben", first_name: "Benny", last_name: "Louie")
yuki = User.create(username: "xuexue", password: "xuexue", first_name: "Yuki", last_name: "Yao")
kelvin = User.create(username: "keke", password: "keke", first_name: "Kelvin", last_name: "Louie")
kenneth = User.create(username: "kenken", password: "kenken", first_name: "Kenneth", last_name: "Louie")
kevin = User.create(username: "kevkev", password: "kevkev", first_name: "Kevin", last_name: "Li")
carl = User.create(username: "carool", password: "carool", first_name: "Carl", last_name: "Xiao")
mark = User.create(username: "marker", password: "marker", first_name: "Mark", last_name: "Dai")

ShopReview.create(user_id: benny.id, shop_id: vivis_b.id, rating: 4, review: "Great Boba! I'm always revisiting!")
ShopReview.create(user_id: benny.id, shop_id: vivis_c.id, rating: 4, review: "Love their Boba! Definitely recommending for others!")
ShopReview.create(user_id: benny.id, shop_id: kft_b.id, rating: 5, review: "My rating says it all!!!")
ShopReview.create(user_id: yuki.id, shop_id: gongcha_b.id, rating: 3, review: "Honestly not bad...")
ShopReview.create(user_id: yuki.id, shop_id: gongcha_m.id, rating: 4, review: "It's better than their Brooklyn branch!")
ShopReview.create(user_id: kelvin.id, shop_id: kft_c.id, rating: 5, review: "You can't NOT love Kung Fu Tea!")
ShopReview.create(user_id: kenneth.id, shop_id: vivis_b.id, rating: 3, review: "Great teas! Staff could use some improvement though")
ShopReview.create(user_id: kevin.id, shop_id: vivis_c.id, rating: 2, review: "Not even gonna mention their boba but their customer service is crap!")
ShopReview.create(user_id: carl.id, shop_id: kft_b.id, rating: 4, review: "I'm only writing this for a reward...")
ShopReview.create(user_id: mark.id, shop_id: kft_c.id, rating: 3, review: "Haha! It's great!")
ShopReview.create(user_id: benny.id, shop_id: kft_c.id, rating: 4, review: "Honestly, all boba is great and therefore all boba shops are equally great!")
ShopReview.create(user_id: kelvin.id, shop_id: gongcha_b.id, rating: 4, review: "All thumbs up!")
ShopReview.create(user_id: kenneth.id, shop_id: vivis_c.id, rating: 4, review: "Better customer service than their Brooklyn branch!")
ShopReview.create(user_id: benny.id, shop_id: gongcha_b.id, rating: 5, review: "I'm loving it!")
ShopReview.create(user_id: yuki.id, shop_id: vivis_b.id, rating: 4, review: "Great Boba")

Recommendation.create(user_id: benny.id, tea_id: jasmine_gb.id, comments: "It's pretty good! Definite recommend!")
Recommendation.create(user_id: yuki.id, tea_id: earl.id, comments: "Love it!")
Recommendation.create(user_id: kelvin.id, tea_id: honeydew.id, comments: "My favorite!")
Recommendation.create(user_id: kenneth.id, tea_id: lemon_gb.id, comments: "Delicious!!!")
Recommendation.create(user_id: kevin.id, tea_id: mango.id, comments: "Who DOESN'T love mango?! XD")


print "It has been seeded!!! 🍀"