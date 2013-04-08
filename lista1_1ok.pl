ptak(X).
dzdzownice(X).
ryby(X).
kot(my_cat).


lubi(X,Y):- ptak(X),dzdzownice(Y).

lubi(X,Y):- kot(X),ryby(Y).

lubi(X,Y):- przyjaciele(X,Y).
lubi(X,Y):- przyjaciele(Y,X).

przyjaciele(my_cat,me).

jesc(my_cat,X):-lubi(my_cat,X).

