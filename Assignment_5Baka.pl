%--------------------------Main run-------------------
run:-
	write('<<WELCOME TO THE LAPTOP PICKER>>'),
	nl,
	write('Answer the following question below.'),
	nl,
	laptop(Laptop).

% if not found laptop
run:-
	nl,
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
	spec(webcam),
	spec(expensive),
	spec(power_consuming),
	spec(has_dedicated_gpu),
	write('The laptop i will recommend you: AzuzFake').

laptop(Squidware) :-
	spec(gaming),
	spec(gamer),
	spec(battery_life),
	spec(budget_range),
	spec(has_dedicated_gpu),
	write('The laptop i will recommend you: Squidware').


laptop(Jade) :-
	spec(gamer),
	spec(work),
	spec(battery_life),
	spec(power_consuming),
	spec(has_dedicated_gpu),
	spec(screen),
	write('The laptop i will recommend you: Jade').


laptop(Lolibook) :-
	spec(work),
	spec(screen),
	spec(battery_life),
	spec(webcam),
	write('The laptop i will recommend you: Lolibook').

laptop(msi) :-
	spec(aesthetic),
	spec(gamer),
	spec(battery_life),
	spec(webcam),
	write('The laptop i will recommend you: MSI').

laptop(JOI) :-
	spec(battery_life),
	spec(work),
	spec(budget_range),
	write('The laptop i will recommend you: JOI').
	

laptop(MacBook) :-
	spec(aesthetic),
	spec(work),
	spec(webcam),
	spec(expensive),
	write('The laptop i will recommend you: MacBook').

laptop(aSUSyBaka) :-
	spec(study),
	spec(battery_life).
	write('The laptop i will recommend you: aSuSyBaka').


%-------------------------ASK----------------------
% To ask whether or not user is a gamer
spec(gamer):-
	nl,
	verify("Are you a gamer? (y/n) : " ).

% To ask whether or not user uses laptop for work
spec(work):-
	nl,
	verify("Are you using your laptop for your work? (y/n) : ").

% To ask whether or not user uses laptop on battery
spec(battery_life):-
	nl,
	verify("Are you always outside? (y/n) : ").

% To ask whether or not user are looking for gaming laptop
spec(gaming):-
	nl,
	verify("Are you looking for a gaming laptop? (y/n) : ").

% To ask whether or not user wants a heavy or lightweight
spec(heavy):-
	nl,
	verify("Do you want a heavy laptop? (y/n) : ").

% To ask whether or not user is poor / rich lol
spec(expensive):-
	nl,
	verify("Do u have a high budget? (y/n) : ").

% To ask whether the user budget is withn range
spec(budget_range):-
	nl,
	verify("Is your laptop budget below RM2000? (y/n) : ").


% To ask whether or not user is a huge power consumer
spec(power_consuming):-
	nl,
	verify("Do u want a high power laptop? (y/n) : ").

% To ask whether or not user wants GPU
spec(has_dedicated_gpu):-
	nl,
	verify("Do you want your laptop have a dedicated GPU? (y/n) : ").

% To ask whether or not user wants MacBook LOL
spec(aesthetic):-
	nl,
	verify("Do you want your laptop to be aesthetic? (y/n) : ").

% To ask whether or not user wants a webcam LOL
spec(webcam):-
	nl,
	verify("Do you want your laptop to have a webcam? (y/n) : ").

% To ask whether the user wants a big screen
spec(screen):-
	nl,
	verify("Do you want your laptop to have a 15inch screen? (y/n) : ").

% To ask whether or not user uses laptop for study
spec(study):-
	nl,
	verify("Are you using your laptop for study? (y/n) : ").

	

%------------------------FUNCTION-------------------
verify(Question) :-
   	(yes(Question) -> true ;
	(no(Question) -> fail ;
     	ask(Question))).

ask(Question) :-
	write(Question),
	read(N),
	( (N == yes ; N == y) ->
       	assert(yes(Question)) ;
       	assert(no(Question)), fail).
