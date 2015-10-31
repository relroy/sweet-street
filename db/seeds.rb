u = User.new([
  {business: "Charlies Tree Service", first_name: "Bob", last_name: "Treeman", address: "111 bash", city: "Bradley", state: "IL", zip_code: "60915", phone: "8154236688", email: "relroy5498@gmail.com", encrypted_password: "$2a$10$7upPx.bPRB6E.PGhGHjLZ.WVEtURqVyXviAi7jWri/imv/TJcEaD2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: nil, last_sign_in_at: "2015-10-24 02:48:39", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true, ws_cust: true}
])
  u.save!(validate: false)
Layout.create!([
  {photo: "christmas-banner2.png", active: true}
])
Order.create!([
  {status: "purchased", user_id: 50, total: "5.97"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "39.8"},
  {status: "purchased", user_id: 50, total: "21.89"},
  {status: "purchased", user_id: 50, total: "21.89"}
])
Product.create!([
  {name: "Popcorns", photo: "choc-drizzled.png", description: "We have a full line of delicious Popcorns to please all! ", special: false},
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
