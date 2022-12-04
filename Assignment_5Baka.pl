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
	write('The laptop i will recommend you: AzuzFake').

%-------------------------ASK----------------------
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
