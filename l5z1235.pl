%1
flatten(X, Y) :-flatten(X, [], Y).
flatten([], A, A).
flatten([H|T], A, [H|R]) :- atomic(H), !,flatten(T, A, R).
flatten([H|T], A, R) :-flatten(T, A, A2),flatten(H, A2, R).

%2
halve(List,A,B) :-halve(List,List,A,B).
halve(B,[],[],B).
halve(B,[_],[],B).
halve([H|T],[_,_|T2],[H|A],B) :- halve(T,T2,A,B).

%3
merge([],X,X):- !.
merge(X,[],X):- !.
merge([H|T],[G|O],[H|M]) :- H < G, !,merge(T,[G|O],M).
merge([H|T],[G|O],[G|M]) :- merge([H|T],O,M).

ms([],[]):-!.
ms([H],[H]):-!.
ms([H|T],X):- halve([H|T],Y,Z),ms(Y,W1),ms(Z,W2),merge(W1,W2,X).


%5
split([], _, [], []).
split([H|T], M, [H|S], B) :- H < M, split(T, M, S, B).
split([H|T], M, S, [H|B]) :- H >= M, split(T, M, S, B).

qsort(X,Y) :- qsort(X, [], Y).

qsort([], A, A) :- !.
qsort([N], A, [N|A]) :- !.
qsort([H|T], A, R) :- split(T, H, S, B),qsort(B, A, A2), qsort(S, [H|A2], R).



