niesmok(X):- zoo(X),happy(X).
happy(X):-animal(X),styka(X,Y),human(Y),nice(Y).
nice(X):-human(X),odwzoo(X).
styka(X,Y):-animal(X),human(Y),zoo(X),odwzoo(Y).

% smok musi byc zwierzeciem i nie moze byc niesmokiem
animal(X):- smok(X).
%istnieja ludzie odwiedzajacy zoo
