run:-
	write('<<WELCOME TO THE LAPTOP PICKER>>'),
	nl,
	write('Answer the following question below.'),
	nl,
	laptop(Laptop).


run:-
	write('Sorry, I dont seem to be able to find a suitable laptop'),nl.

%--------------------------LAPTOP---------------------
laptop(AzuzZeppy) :-
	spec(gaming),
	spec(heavy),
	spec(expensive),
	spec(power_consuming),
	spec(has_dedicated_gpu),
	write('The laptop i will recommend you: AzuzZeppy').

laptop(AzuzFake) :-
	spec(gaming),
	spec(heavy),
	spec(expensive),
	spec(power_consuming),
	spec(has_dedicated_gpu),
	write('The laptop i will recommend you: AzuzFake').

laptop(Jade) :-
	spec(gamer),
	spec(work),
	spec(battery_life),
	spec(power_consuming),
	spec(has_dedicated_gpu),
	write('The laptop i will recommend you: Jade').
laptop(Lolipop):-
	spec(asthetic),
	spec(work),
	spec(battery_life),
	write('The laptop i will recommend you: Lolipop' ).

%-------------------------ASK----------------------
spec(gamer):-
	verify("Are you a gamer? (y/n)").
spec(work):-
	verify("Are you using your laptop for your work? (y/n)").
spec(battery_life):-
	verify("Are you always outside? (y/n)").
spec(gaming):-
	verify("Are you looking for a gaming laptop? (y/n)").
spec(heavy):-
	verify("Do you want a heavy laptop? (y/n)").
spec(expensive):-
	verify("Do u have a high budget? (y/n)").
spec(power_consuming):-
	verify("Do u want a high power laptop? (y/n)").
spec(has_dedicated_gpu):-
	verify("Do you want your laptop have a dedicated GPU? (y/n)").
spec(asthetic):-
	verify("Do you want your laptop to be asthetic? (y/n)").
	


%------------------------FUNCTION-------------------
verify(Question) :-
   (yes(Question) -> true ;
    (no(Question) -> fail ;
     ask(Question))).

ask(Question):-
	write(Question),
	read(N),
	( (N == yes ; N == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).
