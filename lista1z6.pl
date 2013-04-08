przejazd(wroclaw,warszawa).
przejazd(wroclaw,krakow).
przejazd(wroclaw,szczecin).
przejazd(szczecin,lublin).
przejazd(szczecin,gniezno).
przejazd(warszawa,katowice).
przejazd(gniezno,gliwice).
przejazd(lublin,gliwice).

jedna_przesiadka(X,Z) :-
   przejazd(X,Y),
   przejazd(Y,Z).

max_dwie_przesiadki(X,Z) :-
   przejazd(X,Z).

max_dwie_przesiadki(X,Z) :-
    jedna_przesiadka(X,Z).

max_dwie_przesiadki(X,Z) :-
    jedna_przesiadka(X,Y),
  przejazd(Y,Z).

connection(X,Z) :-
   przejazd(X,Z).

connection(X,Z) :-
   przejazd(X,Y),
    connection(Y,Z).



