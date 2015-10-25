User.create!([
  {business: nil, first_name: nil, last_name: nil, address: nil, city: nil, state: nil, zip_code: nil, phone: nil, email: "relroy5498@gmail.com", encrypted_password: "$2a$10$he3Ehjoyrp8gY.m/B./tx.JJsKMndExCtrxo/4mYVUUx.cHQBuGH6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-09-03 18:32:10", last_sign_in_at: "2015-08-24 18:55:31", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, ws_cust: true},
  {business: "Oberweis", first_name: "Robert", last_name: "Elroy", address: "840 N Kinzie", city: "Bradley", state: "Illinois", zip_code: "60915", phone: "8159324666", email: "relroy5499@gmail.com", encrypted_password: "$2a$10$nWv7NgId9dcY68cv6C6pOuNcTf8TMzHw0Os4MI9Z5x5XmygjB3Qom", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-10-13 00:54:05", last_sign_in_at: "2015-10-07 02:08:36", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true, ws_cust: true}
])
CartedProduct.create!([
  {ws_product_id: 1, order_id: 76, quantity: nil, sm_bag_qty: 3, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil},
  {ws_product_id: 2, order_id: 76, quantity: nil, sm_bag_qty: nil, lg_bag_qty: 20, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil},
  {ws_product_id: 1, order_id: 77, quantity: nil, sm_bag_qty: 1, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil},
  {ws_product_id: 2, order_id: 78, quantity: nil, sm_bag_qty: nil, lg_bag_qty: nil, one_gal_tin_qty: 3, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil},
  {ws_product_id: 3, order_id: 79, quantity: nil, sm_bag_qty: nil, lg_bag_qty: nil, one_gal_tin_qty: 5, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil},
  {ws_product_id: 1, order_id: 80, quantity: nil, sm_bag_qty: nil, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: 4, three_half_tin_qty: nil, six_half_tin_qty: nil},
  {ws_product_id: 3, order_id: 81, quantity: nil, sm_bag_qty: 11, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil}
])
Layout.create!([
  {photo: "christmas-banner2.png", active: true}
])
Order.create!([
  {status: "purchased", user_id: 45, total: "85.77"},
  {status: "purchased", user_id: 45, total: "1.99"},
  {status: "purchased", user_id: 45, total: "89.97"},
  {status: "purchased", user_id: 45, total: "149.95"},
  {status: "purchased", user_id: 45, total: "183.96"},
  {status: "purchased", user_id: 45, total: "21.89"}
])
PopcornFlavor.create!([
  {name: "White Cheeze", photo: "white_cheddar.png", product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: "Smothered in White Cheddar! Yum!"},
  {name: "Chocolate Drizzled Caramel Corn", photo: "choc-drizzled.png", product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "White Choclate Drizzled Sea Salt Caramel Corn", photo: "wchocdrizzl.png", product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "Turn Up The Heat", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "Light My Fire", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "Avalanche", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "Caramel Pecan", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: nil, description: nil},
  {name: "Caramel 3 Nut Corner", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "Milk Chocolate Drizzled Sea Salt Caramel Corn", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: nil, two_gal_tin: nil, three_and_half_tin: nil, six_and_half_tin: nil, description: nil},
  {name: "Regular", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "11.99", two_gal_tin: "17.99", three_and_half_tin: "24.99", six_and_half_tin: "32.99", description: nil},
  {name: "Caramel Corn", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99", description: nil},
  {name: "Cheese Corn", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99", description: nil},
  {name: "Mix", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99", description: nil},
  {name: "Kettle Corn", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99", description: nil},
  {name: "Crazy Corn", photo: nil, product_id: 1, sm_bag: "0.0", lg_bag: "0.0", one_gal_tin: "19.99", two_gal_tin: "38.99", three_and_half_tin: "51.99", six_and_half_tin: "84.99", description: nil},
  {name: "Caramel Chewy", photo: "5_C_S.jpg", product_id: nil, sm_bag: "2.22", lg_bag: "3.33", one_gal_tin: "4.44", two_gal_tin: "5.55", three_and_half_tin: "44.66", six_and_half_tin: "100.0", description: nil}
])
Product.create!([
  {name: "Popcorns", photo: "choc-drizzled.png", description: "We have a full line of delicious Popcorns to please all! This week we have Popcorn bags on sale for $1.99 for small or $2.99 for large.", special: false},
  {name: "Chewy Candies", photo: "chews.jpg", description: "It'll take you time to chew through our many chewy candies to select from!", special: false},
  {name: "Retro Candies", photo: "frooties.jpeg", description: "Remember when these were popular? We are bringing them back!", special: false},
  {name: "Sour Candies", photo: "sourcandy.jpg", description: "See if these make your eyes cringe!", special: false},
  {name: "Truffles", photo: "truffles-1.jpg", description: "The finest of Truffles for your enjoyment!", special: false},
  {name: "Nuts", photo: "mixed_nut.jpg", description: "Sometime you feel like a nut!", special: false},
  {name: "Chocolate Candies", photo: "dd.jpg", description: "White Chocolate, Dark Chocolate, & Milk Chocolate!!  Oh MY!", special: false},
  {name: "Chocolate Dipped Strawberries", photo: "Choco_Strawberries1.jpg", description: "These are the BEST! We have them on special days. Look for them frequently.", special: false},
  {name: "Gift Cards", photo: "gift-card.jpeg", description: "Treat your loved one with a Gift Card on your next Special occasion!", special: false},
  {name: "Gifts", photo: "IMG_1192.JPG", description: "Someone special will love getting one of these!", special: false},
  {name: "Caramel Apples", photo: "caramel_apples.jpg", description: "Kid's of all ages love our Caramel Apples in many flavors!", special: false},
  {name: "Candy Bars", photo: "candy-bars.jpg", description: "We have a wide selection of tasty Candy bars for you to enjoy!", special: false},
  {name: "Cotton Candy", photo: "cotton-candy3.jpg", description: "Time for a Sugar High!", special: false},
  {name: "Peanut Brittle", photo: "brittle.jpg", description: "Crunch Greatness!", special: false},
  {name: "Malted Milk Balls", photo: "chocolate-malt-balls.jpg", description: "Chocolate Malted Milk Balls will make your mouth water!", special: false},
  {name: "Tropical Sno Shaved Ice", photo: "shaved-collage.png", description: "Come in and cool off with our shaved ice", special: false},
  {name: "Fudge", photo: "fudge.jpg", description: "The best fudge money can buy!", special: false},
  {name: "Retro Sodas", photo: "pop1.jpg", description: "Remember when?!", special: false},
  {name: "Assorted Chocolates", photo: "chocolates-box.jpg", description: "We have many varieties of chocolates to choose from!", special: false}
])
WsProduct.create!([
  {name: "White Cheddar", photo: "white_cheddar.png", sm_bag: "1.99", lg_bag: "2.99", one_gal_tin: "23.99", two_gal_tin: "45.99", three_and_half_tin: "65.99", six_and_half_tin: "120.99"},
  {name: "Chocolate Drizzled Caramel Corn", photo: "choc-drizzled.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "White Choclate Drizzled Sea Salt Caramel Corn", photo: "wchocdrizzl.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Turn Up The Heat", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Light My Fire", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Avalanche", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Caramel Pecan", photo: "caramel_pecan_popcorn.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Caramel 4 Nut Corner", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Milk Chocolate Drizzled Sea Salt Caramel Corn", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Regular", photo: "Popcorn-600.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "11.99", two_gal_tin: "17.99", three_and_half_tin: "24.99", six_and_half_tin: "32.99"},
  {name: "Caramel Corn", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"},
  {name: "Cheese Corn", photo: "Chocolate-Popcorn-Tin.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"},
  {name: "Mix", photo: "popcorn-tin-1.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"},
  {name: "Kettle Corn", photo: "popcorn-tin-1.png", sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"}
])
