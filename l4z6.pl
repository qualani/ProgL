cn(D,N):-cn(D,0,N).
cn([],A,A).
cn([H|T],A,R):- A1 is A*10+H, cn(T,A1,R).

sublist([],[]).
sublist([H|M],[H|N]):-sublist(M,N).
sublist([_|M],X):-sublist(M,X).



zag(A,C,E,P,R,S,U):-
	L=[_,_,_,_,_,_,_],
	sublist([0,1,2,3,4,5,6,7,8,9],L),
	permutation([A,C,E,P,R,S,U],L),
	U\=0,
	P\=0,
	cn([U,S,A],X),
	cn([U,S,S,R],Y),
	cn([P,E,A,C,E],Z),
	Z is X+Y.
