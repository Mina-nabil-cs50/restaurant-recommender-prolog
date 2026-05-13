%Team members
%Menreet Mina 202403176
%Jana Walid 202403271
%Passant Hussien 202403146
%Mina Nabil 202403811
%Yassa Saied 202304635



% main.pl
% Interactive menu system for DineSmart
% Start the program

:- consult('rules.pl').


start :-
    menu_loop.

% main menu loop
%the main menu has to be in  a loop so we can choose many times without restarting the program

menu_loop :-
    nl,
    write('        DineSmart Main Menu          '), nl,
    write('--------------------------------------'), nl,
    write('1 View full restaurant profile'), nl,
    write('2 View top-rated restaurants alert'), nl,
    write('3 Get filtered recommendations'), nl,
    write('4 Search by cuisine and budget'), nl,
    write('5 Check restaurant rating recommendation'), nl,
    write('6 Exit system'), nl,
    write('Enter your choice: '),
    read(Choice),
    handle_choice(Choice).

% menu options msg
handle_choice(1) :-
    nl,
    write('Enter Restaurant Name (e.g., pizza_hut): '),
    read(Name),
    restaurant_profile(Name),
    menu_loop.

handle_choice(2) :-
    top_picks_alert,
    menu_loop.

handle_choice(3) :-
    nl,
    write('Enter Budget (low_price / medium_price / high_price): '),
    read(Budget),
    write('Enter Maximum Distance (number): '),
    read(MaxDistance),
    write('Enter Minimum Rating (e.g., 4.0): '),
    read(MinRating),
    filtered_recommendation(Budget, MaxDistance, MinRating),
    menu_loop.

handle_choice(4) :-
    nl,
    write('Enter Cuisine Type (e.g., italian, chinese): '),
    read(Cuisine),
    write('Enter Budget (low_price / medium_price / high_price): '),
    read(Budget),
    cuisine_search(Cuisine, Budget),
    menu_loop.

handle_choice(5) :-
    nl,
    write('Enter Restaurant Name (e.g., sushi_house): '),
    read(Name),
    restaurant_recommendation(Name),
    menu_loop.

handle_choice(6) :-
    nl,
    write('Exiting DineSmart system... Goodbye!'), nl.

% invalid input msg
handle_choice(_) :-
    nl,
    write('Invalid choice. Please try again.'), nl,
    menu_loop.
