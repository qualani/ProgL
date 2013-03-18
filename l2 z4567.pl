%4
even([]).
even([_,_|T]):-even(T).
palindrom(X):-palindrom(X,[]).
palindrom(X,X).
palindrom(X,[_|X]).
palindrom([H|T],X):-palindrom(T,[H|X]).
singleton([_]).
%5
head(H,[H|T]).
last([X],X).
last([H|T],X):-last(T,X).
tail(X,[_|X]).
init(L,T):- append(T,[_],L).
prefix(P,L):-append(P,_,L).
suffix(L,S):-append(_,S,L).
%6
sublist([],[]).
sublist([H|M],[H|N]):-sublist(M,N).
sublist([_|M],X):-sublist(M,X).
%7
perm([],[]).
perm(X,[H|T]):-select(H,X,Y), perm(X,T).
