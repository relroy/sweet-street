User.create!([
  {business: "Oberweis", first_name: "Robert", last_name: "Elroy", address: "840 N Kinzie", city: "840 N Kinzie", state: "Illinois", zip_code: "60915", phone: "8159324666", email: "relroy5499@gmail.com", password: "$2a$10$qoJqHqckGcBYx943MNQjEeMbwakwHxfT7EUFRg9Oprya3C2FTGmkO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: nil, last_sign_in_at: "2015-11-07 15:43:04", current_sign_in_ip: "", last_sign_in_ip: "127.0.0.1", admin: true, ws_cust: true}
])
CartedProduct.create!([
  {order_id: 135, quantity: nil, sm_bag_qty: 3, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 1},
  {order_id: 136, quantity: nil, sm_bag_qty: 11, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 1},
  {order_id: 137, quantity: nil, sm_bag_qty: 2, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 1},
  {order_id: 138, quantity: nil, sm_bag_qty: 3, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 2},
  {order_id: 139, quantity: nil, sm_bag_qty: 20, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 1},
  {order_id: 140, quantity: nil, sm_bag_qty: 3, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 1},
  {order_id: 141, quantity: nil, sm_bag_qty: 3, lg_bag_qty: nil, one_gal_tin_qty: nil, two_gal_tin_qty: nil, three_half_tin_qty: nil, six_half_tin_qty: nil, ws_product_id: 1}
])
Layout.create!([
  {photo: "christmas-banner2.png", active: true},
  {photo: nil, active: true},
  {photo: nil, active: true},
  {photo: nil, active: true}
])
Order.create!([
  {status: "purchased", user_id: 50, total: "5.97"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "5.97"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "5.97"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "5.97"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 66, total: "5.97"},
  {status: "purchased", user_id: 66, total: "21.89"},
  {status: "purchased", user_id: 66, total: "3.98"},
  {status: "purchased", user_id: 66, total: "5.97"},
  {status: "purchased", user_id: 66, total: "39.8"},
  {status: "purchased", user_id: 66, total: "5.97"},
  {status: "purchased", user_id: 66, total: "5.97"}
])
Product.create!([
  {name: "Popcorns", photo: "", description: "We have a full line of delicious Popcorns to please all! ", special: false},
  {name: "Chewy Candies", photo: "", description: "It'll take you time to chew through our many chewy candies to select from!", special: false},
  {name: "Retro Candies", photo: "", description: "Remember when these were popular? We are bringing them back!", special: false},
  {name: "Sour Candies", photo: "", description: "See if these make your eyes cringe!", special: false},
  {name: "Truffles", photo: "", description: "The finest of Truffles for your enjoyment!", special: false},
  {name: "Nuts", photo: "", description: "Sometime you feel like a nut!", special: false},
  {name: "Chocolate Candies", photo: "", description: "White Chocolate, Dark Chocolate, & Milk Chocolate!!  Oh MY!", special: false},
  {name: "Chocolate Dipped Strawberries", photo: "", description: "These are the BEST! We have them on special days. Look for them frequently.", special: false},
  {name: "Gift Cards", photo: "", description: "Treat your loved one with a Gift Card on your next Special occasion!", special: false},
  {name: "Gifts", photo: "", description: "Someone special will love getting one of these!", special: false},
  {name: "Caramel Apples", photo: "", description: "Kid's of all ages love our Caramel Apples in many flavors!", special: false},
  {name: "Candy Bars", photo: "", description: "We have a wide selection of tasty Candy bars for you to enjoy!", special: false},
  {name: "Cotton Candy", photo: "", description: "Time for a Sugar High!", special: false},
  {name: "Peanut Brittle", photo: "", description: "Crunch Greatness!", special: false},
  {name: "Malted Milk Balls", photo: "", description: "Chocolate Malted Milk Balls will make your mouth water!", special: false},
  {name: "Tropical Sno Shaved Ice", photo: "", description: "Come in and cool off with our shaved ice", special: false},
  {name: "Fudge", photo: "", description: "The best fudge money can buy!", special: false},
  {name: "Retro Sodas", photo: "", description: "Remember when?!", special: false},
  {name: "Assorted Chocolates", photo: "", description: "We have many varieties of chocolates to choose from!", special: false}
])
WsProduct.create!([
  {name: "White Cheddar", photo: nil, sm_bag: "1.99", lg_bag: "2.99", one_gal_tin: "23.99", two_gal_tin: "45.99", three_and_half_tin: "65.99", six_and_half_tin: "120.99"},
  {name: "Chocolate Drizzled Caramel Corn", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "White Choclate Drizzled Sea Salt Caramel Corn", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Turn Up The Heat", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Light My Fire", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Avalanche", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Caramel Pecan", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Caramel 4 Nut Corner", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Milk Chocolate Drizzled Sea Salt Caramel Corn", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "29.99", two_gal_tin: "49.99", three_and_half_tin: "82.99", six_and_half_tin: "64.99"},
  {name: "Regular", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "11.99", two_gal_tin: "17.99", three_and_half_tin: "24.99", six_and_half_tin: "32.99"},
  {name: "Caramel Corn", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"},
  {name: "Cheese Corn", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"},
  {name: "Mix", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"},
  {name: "Kettle Corn", photo: nil, sm_bag: "1.99", lg_bag: "3.99", one_gal_tin: "15.99", two_gal_tin: "29.99", three_and_half_tin: "39.99", six_and_half_tin: "64.99"}
])
