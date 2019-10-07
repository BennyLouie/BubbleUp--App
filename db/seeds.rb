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
earl = Tea.create(name: "Earl Grey Tea", price: 4.0, shop_id: vivis_b.id, img_url: "https://www.twinings.co.uk/app_/responsive/TwiningsUKI/media/content/Recipes/Earl-Grey-Bubble-Tea/WYSIWYG-earl-grey-bubble-tea.jpg?w=1060")
three_j = Tea.create(name: "3 J's Tea", price: 4.5, shop_id: gongcha_m.id, img_url: "https://www.gongchausa.com/wp-content/uploads/2016/03/Milk-Tea-w-Grass-Jelly-Iced-722x1024.png")
honeydew = Tea.create(name: "Honeydew Milk Tea", price: 4.5, shop_id: vivis_b.id, img_url: "https://ehc-west-0-bucket.s3.us-west-2.amazonaws.com/web/documents/banhmiviet/menu_item_images/item_image_2656dea9-560b-4fe2-b3dd-44b87347a09e.jpg?2018-06-07+01%3A30%3A02")
mango = Tea.create(name: "Mango Slush", price: 4.25, shop_id: kft_b.id, img_url: "https://chloejohnston.com/wp-content/uploads/2019/07/mango-slush-bubble.png")
milk = Tea.create(name: "Plain Milk Tea", price: 3.25, shop_id: gongcha_b.id, img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Classic_bubble_tea.jpg/220px-Classic_bubble_tea.jpg")
redbean = Tea.create(name: "Red Bean Slush", price: 4.5, shop_id: kft_c.id, img_url: "https://scontent-frx5-1.cdninstagram.com/vp/3b44a52431bd4bf2ba917a4d028eca6f/5E0FFAC9/t51.2885-15/e35/54511237_150759219283707_5019595462792659101_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com")
herbal = Tea.create(name: "Milk Tea w/ Herbal Jelly", price: 4.5, shop_id: gongcha_m.id, img_url: "http://gong-cha.ca/wp-content/uploads/2019/04/Wintermelon-Milk-Tea-with-Grass-Jelly.png")
lemon_kb = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: kft_b.id, img_url: "https://www.herbalteasonline.com/wp-content/uploads/2016/10/Honey-and-Lemon-Tea.jpg")
lemon_vc = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: vivis_c.id, img_url: "https://www.herbalteasonline.com/wp-content/uploads/2016/10/Honey-and-Lemon-Tea.jpg")
lemon_vb = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: vivis_b.id, img_url: "https://www.herbalteasonline.com/wp-content/uploads/2016/10/Honey-and-Lemon-Tea.jpg")
lemon_gb = Tea.create(name: "Honey Lemon Tea", price: 3.75, shop_id: gongcha_b.id, img_url: "https://www.herbalteasonline.com/wp-content/uploads/2016/10/Honey-and-Lemon-Tea.jpg")

benny = User.create(username: "benben", password: "benben", first_name: "Benny", last_name: "Louie", photo_url: "https://avatars.slack-edge.com/2019-08-25/726240430210_f4c675ed507bf801c56c_192.png")
yuki = User.create(username: "xuexue", password: "xuexue", first_name: "Yuki", last_name: "Yao", photo_url: "https://avatars.slack-edge.com/2019-08-24/736759308836_bf0f07a74453104db0cd_192.png")
kelvin = User.create(username: "keke", password: "keke", first_name: "Kelvin", last_name: "Louie", photo_url: "https://avatars.slack-edge.com/2019-08-25/726240430210_f4c675ed507bf801c56c_192.png")
kenneth = User.create(username: "kenken", password: "kenken", first_name: "Kenneth", last_name: "Louie", photo_url: "https://avatars.slack-edge.com/2019-08-25/726240430210_f4c675ed507bf801c56c_192.png")
kevin = User.create(username: "kevkev", password: "kevkev", first_name: "Kevin", last_name: "Li", photo_url: "https://avatars.slack-edge.com/2019-08-25/726240430210_f4c675ed507bf801c56c_192.png")
carl = User.create(username: "carool", password: "carool", first_name: "Carl", last_name: "Xiao", photo_url: "https://avatars.slack-edge.com/2019-08-25/726240430210_f4c675ed507bf801c56c_192.png")
mark = User.create(username: "marker", password: "marker", first_name: "Mark", last_name: "Dai", photo_url: "https://avatars.slack-edge.com/2019-08-25/726240430210_f4c675ed507bf801c56c_192.png")

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