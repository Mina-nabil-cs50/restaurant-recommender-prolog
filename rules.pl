%Team members
%Menreet Mina 202403176
%Jana Walid 202403271
%Passant Hussien 202403146
%Mina Nabil 202403811
%Yassa Saied 202304635
% Rule 1 resturant profile
% this rule gives the full profile including resturant name, cuisine type, price, rating and distance.
%and attributes like delivery availability, dine in, late hours, familyfriendliness, romantic restuarnts, and vegetarian food
:- consult('knowledgeBase.pl').
restaurant_profile(Name) :-

    restaurant(Name, Cuisine, Price, Rating, Distance),

    nl,
    write('===== Restaurant Profile ====='), nl,

    format('Name: ~w~n', [Name]),
    format('Cuisine: ~w~n', [Cuisine]),
    format('Price: ~w~n', [Price]),
    format('Rating: ~w~n', [Rating]),
    format('Distance: ~w km~n', [Distance]),

    (has_delivery(Name)
        -> write('Delivery: Yes'), nl
        ;  write('Delivery: No'), nl),

    (has_dine_in(Name)
        -> write('Dine In: Yes'), nl
        ;  write('Dine In: No'), nl),

    (is_open_late(Name)
        -> write('Open Late: Yes'), nl
        ;  write('Open Late: No'), nl),

    (is_family_friendly(Name)
        -> write('Family Friendly: Yes'), nl
        ;  write('Family Friendly: No'), nl),

    (is_romantic(Name)
        -> write('Romantic: Yes'), nl
        ;  write('Romantic: No'), nl),

    (serves_vegetarian(Name)
        -> write('Vegetarian: Yes'), nl
        ;  write('Vegetarian: No'), nl).



% rule 2 Top Picks Alert
% Displays all restaurants with a rating of 4.5 or higher.
% This rule prints only top-rated resturants

top_picks_alert :-

    nl,
    write('===== Top Rated Restaurants (4.5+) ====='), nl,

    restaurant(Name, Cuisine, _, Rating, Distance),
    Rating >= 4.5,

    format('~w | ~w | Rating: ~w | Distance: ~w km~n',
           [Name, Cuisine, Rating, Distance]),

    fail.

top_picks_alert.



% rule 3 Filtered Recommendation
%Generates a list of restaurants based on:
%Budget price
%Maximum distance
%Minimum rating
% Only restaurants that meet all constraints are displayed
% Useful for recommended search results

filtered_recommendation(Budget, MaxDistance, MinRating) :-

    nl,
    write('===== Recommended Restaurants ====='), nl,

    restaurant(Name, Cuisine, Budget, Rating, Distance),

    Distance =< MaxDistance,
    Rating >= MinRating,

    format('~w | Cuisine: ~w | Rating: ~w | Distance: ~w km~n',
           [Name, Cuisine, Rating, Distance]),

    fail.

filtered_recommendation(_, _, _).



% rule 4 Cuisine Search
% Filters restaurants by a specific cuisine type and budget
% Displays matching restaurants with rating and distance
% Designed for users searching for a specific food style
% within a given price range
cuisine_search(CuisineType, Budget) :-

    nl,
    write('===== Cuisine Search Results ====='), nl,

    restaurant(Name, CuisineType, Budget, Rating, Distance),

    format('Name: ~w | Cuisine: ~w | Rating: ~w | Distance: ~w km~n',
           [Name, CuisineType, Rating, Distance]),

    fail.

cuisine_search(_, _) :-
    nl,
    write('End of results.'), nl.

%rule 5 Rating Recommendation
%Provides recommendation message based on restaurant's rating
% 4.5 or more = Highly recommended
% 3.5 to 4.4 = Good option
% below 3.4 = Average / consider alternatives
% Helps users understand ratings in natural language

restaurant_recommendation(Name) :-

    restaurant(Name, _, _, Rating, _),

    nl,

    ( Rating >= 4.5 ->
        write('Highly recommended — excellent choice')

    ; Rating >= 3.5 ->
        write('Good option — worth a visit')

    ;
        write('Average rating — consider other options')
    ),

    nl.

