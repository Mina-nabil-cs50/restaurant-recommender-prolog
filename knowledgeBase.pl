%Team members 
%Menreet Mina 202403176
%Jana Walid 202403271
%Passant Hussien 202403146
%Mina Nabil 202403811
%Yassa Saied 202304635



% Facts
% Restaurant Facts
restaurant(pizza_hut, italian, medium_price, 4.5, 3).
restaurant(kfc, fast_food, low_price, 4.0, 2).
restaurant(mcdonalds, fast_food, low_price, 4.1, 1).
restaurant(sea_star, seafood, high_price, 4.8, 7).
restaurant(sushi_house, japanese, high_price, 4.7, 5).
restaurant(burger_zone, american, medium_price, 4.2, 4).
restaurant(spicy_village, indian, medium_price, 4.6, 6).
restaurant(green_bowl, healthy, medium_price, 4.4, 2).
restaurant(pasta_corner, italian, medium_price, 4.3, 3).
restaurant(bbq_nation, bbq, high_price, 4.5, 8).
restaurant(china_town, chinese, low_price, 4.0, 4).
restaurant(taco_land, mexican, low_price, 4.1, 5).
restaurant(french_delight, french, high_price, 4.9, 9).
restaurant(cafe_roma, cafe, medium_price, 4.2, 2).
restaurant(veggie_life, vegetarian, medium_price, 4.6, 3).
restaurant(steak_house, steak, high_price, 4.7, 10).
restaurant(dessert_palace, dessert, low_price, 4.3, 1).
restaurant(arabian_nights, arabic, medium_price, 4.5, 6).
restaurant(lebanese_flavor, lebanese, medium_price, 4.4, 5).
restaurant(turkish_grill, turkish, high_price, 4.8, 7).
restaurant(pancake_world, breakfast, low_price, 4.0, 2).
restaurant(ocean_breeze, seafood, high_price, 4.7, 8).
restaurant(family_table, international, medium_price, 4.5, 4).
restaurant(pizza_heaven, italian, high_price, 4.8, 6).
restaurant(dragon_wok, chinese, medium_price, 4.3, 4).
restaurant(burger_factory, american, low_price, 4.1, 3).
restaurant(royal_india, indian, high_price, 4.9, 9).
restaurant(salad_station, healthy, low_price, 4.2, 2).
restaurant(morning_bites, breakfast, medium_price, 4.4, 3).
restaurant(grill_master, bbq, high_price, 4.6, 7).
restaurant(sweet_tooth, dessert, low_price, 4.5, 1).
restaurant(casa_mexicana, mexican, medium_price, 4.3, 5).
restaurant(mediterranean_taste, mediterranean, high_price, 4.7, 8).

% Delivery Services
has_delivery(pizza_hut).
has_delivery(kfc).
has_delivery(mcdonalds).
has_delivery(burger_zone).
has_delivery(spicy_village).
has_delivery(green_bowl).
has_delivery(pasta_corner).
has_delivery(china_town).
has_delivery(taco_land).
has_delivery(cafe_roma).
has_delivery(veggie_life).
has_delivery(dessert_palace).
has_delivery(lebanese_flavor).
has_delivery(pancake_world).
has_delivery(pizza_heaven).
has_delivery(dragon_wok).
has_delivery(burger_factory).
has_delivery(salad_station).
has_delivery(morning_bites).
has_delivery(sweet_tooth).
has_delivery(casa_mexicana).

% Dine In Available
has_dine_in(pizza_hut).
has_dine_in(sea_star).
has_dine_in(sushi_house).
has_dine_in(bbq_nation).
has_dine_in(french_delight).
has_dine_in(steak_house).
has_dine_in(arabian_nights).
has_dine_in(turkish_grill).
has_dine_in(ocean_breeze).
has_dine_in(family_table).
has_dine_in(royal_india).
has_dine_in(grill_master).
has_dine_in(mediterranean_taste).

% Open Late
is_open_late(kfc).
is_open_late(mcdonalds).
is_open_late(bbq_nation).
is_open_late(taco_land).
is_open_late(cafe_roma).
is_open_late(dessert_palace).
is_open_late(burger_factory).
is_open_late(grill_master).
is_open_late(sweet_tooth).

% Family Friendly
is_family_friendly(pizza_hut).
is_family_friendly(burger_zone).
is_family_friendly(pancake_world).
is_family_friendly(family_table).
is_family_friendly(arabian_nights).
is_family_friendly(lebanese_flavor).
is_family_friendly(grill_master).

% Romantic Restaurants
is_romantic(sea_star).
is_romantic(sushi_house).
is_romantic(french_delight).
is_romantic(steak_house).
is_romantic(ocean_breeze).
is_romantic(mediterranean_taste).

% Vegetarian Options
serves_vegetarian(green_bowl).
serves_vegetarian(veggie_life).
serves_vegetarian(salad_station).
serves_vegetarian(spicy_village).
serves_vegetarian(mediterranean_taste).
