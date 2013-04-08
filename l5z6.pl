gen(X1, Y1, X1, Y1):-
	X1 >= 0.
gen(X1, Y1, X, Y1):-
	X1 > 0,
	X is -X1.
gen(X1, Y1, X1, Y):-
	X1 >= 0,
	Y1 > 0,
	Y is -Y1.
gen(X1, Y1, X, Y):-
	X1 > 0,
	Y1 > 0,
	X is -X1,
	Y is -Y1.
gen(X1, Y1, X, Y):-
	X1 >= 0,
	X2 is X1 - 1,
	Y2 is Y1 + 1,
	gen(X2, Y2, X, Y).

naturalne(N, N).
naturalne(N, X):-
	write(N),
	N1 is N + 1,
	naturalne(N1, X).

calkowita(Z, Z).
calkowita(Z, W):-
	\+ Z = 0,
	W is -Z.
calkowita(Z, X):-
	Z1 is Z + 1,
	calkowita(Z1, X).


sum(X, Y, Z):-
	var(X),
	var(Y),
	var(Z),
	naturalne(0, X1),
	gen(X1, 0, X, Y),
	Z is X + Y.

sum(X, Y, Z):-
	var(X),
	var(Y),
	\+ var(Z),
	calkowita(0,X),
	Y is Z - X.




